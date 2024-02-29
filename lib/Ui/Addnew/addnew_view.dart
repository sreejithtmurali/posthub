import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posthub/app/size_utils.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../app/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'addnew_viewmodel.dart';

class AddnewView extends StatelessWidget {
  AddnewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddnewViewModel>.reactive(
        viewModelBuilder: () => AddnewViewModel(),
        onViewModelReady: (model) {},
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CustomAppBar(
                leadingWidth: 56.h,
                leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowDown,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
                title: AppbarTitle(
                  text: "Create New Ad",
                  margin: EdgeInsets.only(left: 11.h),
                ),
              ),
              body: Form(
                key: model.formKey,
                child: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Column(
                      children: [
                        TakePic(),
                        SizedBox(height: 45.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Row(
                              children: [
                                Text(
                                  "Run Campaign in",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Row(
                              children: [
                                CircleAvatar(),
                                SizedBox(
                                  width: 5.v,
                                ),
                                CircleAvatar()
                              ],
                            )),
                        SizedBox(height: 17.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: CustomTextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Caption';
                              }
                              return null;
                            },
                            controller: model.addCaptionValueController,
                            hintText: "Add Caption",
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: CustomTextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Description';
                              }
                              return null;
                            },
                            controller: model.addDescriptionController,
                            hintText: "Add Description",
                            maxLines: 5,
                            contentPadding: EdgeInsets.all(8.h),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Add Your Budget",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: CustomTextFormField(
                            validator: (value) {
                              if (value == null || int.parse(value) < 500) {
                                return 'Please enter sufficient Budget';
                              }
                              return null;
                            },
                            controller: model.budgetctrlr,
                            hintText: "₹",
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Min amount  500",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Row(
                              children: [
                                Text(
                                  "Start from",
                                  style: theme.textTheme.titleSmall,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 94.h),
                                  child: Text(
                                    "End Date",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 160.h,
                                child: CustomTextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter start date';
                                    }
                                    return null;
                                  },
                                  controller: model.startdateController,
                                  hintText: "Pic Date",
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                              Container(
                                width: 160.h,
                                child: CustomTextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter end date';
                                    }
                                    return null;
                                  },
                                  controller: model.enddateController,
                                  hintText: "Pic Date",
                                  textInputAction: TextInputAction.done,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Location ",
                                style: theme.textTheme.titleSmall,
                              ),
                              Text(
                                "+ Add",
                                style: theme.textTheme.labelLarge!.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: CustomTextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Location';
                              }
                              return null;
                            },
                            controller: model.locationController,
                            hintText: "Location",
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                        SizedBox(height: 28.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Age Preference",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        SizedBox(
                          height: 50.v,
                          child: SfRangeSlider(
                            min: 0.0,
                            max: 100.0,
                            values: model.values,
                            interval: 10,
                            showTicks: true,
                            showLabels: true,
                            enableTooltip: true,
                            minorTicksPerInterval: 1,
                            onChanged: (SfRangeValues values) {
                              model.setrange(values);
                            },
                          ),
                        ),
                        SizedBox(height: 30.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "Gender",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        Container(
                          height: 32.v,
                          width: 330.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Radio(
                                activeColor: Theme.of(context).primaryColor,
                                value: model.gender[0],
                                groupValue: model.sex,
                                onChanged: (value) {
                                  model.ChangeGender(value);
                                },
                              ),
                              Text("${model.gender[0]}"),
                              SizedBox(
                                width: 5.v,
                              ),
                              Radio(
                                activeColor: Theme.of(context).primaryColor,
                                value: model.gender[1],
                                groupValue: model.sex,
                                onChanged: (value) {
                                  model.ChangeGender(value);
                                },
                              ),
                              Text("${model.gender[1]}"),
                              SizedBox(
                                width: 5.v,
                              ),
                              Radio(
                                activeColor: Theme.of(context).primaryColor,
                                value: model.gender[2],
                                groupValue: model.sex,
                                onChanged: (value) {
                                  model.ChangeGender(value);
                                },
                              ),
                              Text("${model.gender[2]}")
                            ],
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Keywords",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 5.v),
                                  Container(
                                      child: CustomTextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter key words for ranking';
                                      }
                                      return null;
                                    },
                                    controller: model.addKeywordsController,
                                    hintText: "Add upto 10 Keywords",
                                    contentPadding: EdgeInsets.all(8.h),
                                  )),
                                  SizedBox(height: 3.v),
                                  Text(
                                    "Add a comma (,) to separate keyword ",
                                    style: theme.textTheme.labelMedium,
                                  ),
                                  SizedBox(height: 26.v),
                                  CustomElevatedButton(
                                    text: "Run Campaign",
                                    onPressed: () {
                                      model.validateandpush();
                                    },
                                  ),
                                  SizedBox(height: 26.v),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 260.v,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class TakePic extends ViewModelWidget<AddnewViewModel> {
  TakePic({super.key});

  @override
  Widget build(BuildContext context, AddnewViewModel viewModel) {
    var url;

    File? _image;

    // This is the image picker
    final _picker = ImagePicker();

    getImage() async {
      final XFile? pickedImage =
          await _picker.pickImage(source: ImageSource.gallery);
      print(pickedImage!.path.toString());
      _image = File(pickedImage!.path);
      viewModel.UpdateFile(_image);

      var imagefile = FirebaseStorage.instance
          .ref()
          .child("post_thumbnail")
          .child("/postpic${_image}.jpg");
      UploadTask task = imagefile.putFile(_image!);
      TaskSnapshot snapshot = await task;
      url = await snapshot.ref.getDownloadURL();
print("url::::${url.toString()}");
      viewModel.UpdateFie(url);

      // print(file);
    }

    return SizedBox(
      height: 200.v,
      width: 329.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            child: viewModel.file == null
                ? Image.asset('${ImageConstant.imgRectangle7304x329}')
                : Image.file(viewModel.file!),
            height: 200.v,
            width: 329.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
            alignment: Alignment.center,
          ),
          CustomOutlinedButton(
            width: 119.h,
            text: "Browse Files",
            margin: EdgeInsets.only(bottom: 108.v),
            alignment: Alignment.bottomCenter,
            onPressed: () {
              getImage();
            },
          ),
        ],
      ),
    );
   }
}
