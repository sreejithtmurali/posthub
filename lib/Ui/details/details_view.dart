import 'package:flutter/material.dart';
import 'package:posthub/app/size_utils.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.router.dart';
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
import '../../widgets/custom_text_form_field.dart';
import '../home/user.dart';
import 'detais_viewmodel.dart';

class DetailsView extends StatelessWidget {
 late Post post;

 DetailsView({required this.post});


  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<DetailsViewModel>.reactive(

        viewModelBuilder: (){
          final arguments = ModalRoute.of(context)!.settings.arguments as DetailsViewArguments;
          post = arguments.post;

          return DetailsViewModel(post: post);},
        onViewModelReady: (model){
          model.init();

        },
        builder:( context,model,child){
          return   SafeArea(
              child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  appBar: CustomAppBar(
                      leadingWidth: 56.h,
                      leading: AppbarLeadingIconbutton(
                          imagePath:model.photoURL ,
                          margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v)),
                      centerTitle: true,
                      title: AppbarTitle(text: "Advertisement  Status")),
                  body: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            _buildAdvDetailsOne(context),
                            SizedBox(height: 24.v),
                            Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: CustomTextFormField(
                                    controller: model.frameEighteenController,
                                    hintText: "${post.caption}")),
                            SizedBox(height: 16.v),
                            Padding(
                                padding: EdgeInsets.only(right: 2.h),
                                child: CustomTextFormField(
                                    controller: model.frameNineteenController,
                                    hintText:
                                    "${post.discription}",
                                    textInputAction: TextInputAction.done,
                                    maxLines: 4,
                                    contentPadding: EdgeInsets.all(8.h))),
                            SizedBox(height: 19.v),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtEditMore(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(right: 1.h),
                                    child: Text("Edit More",
                                        style: theme.textTheme.labelLarge!.copyWith(
                                            decoration: TextDecoration.underline)))),
                            SizedBox(height: 5.v)
                          ])),
                  bottomNavigationBar: CustomElevatedButton(
                      text: "Update Changes",
                      margin: EdgeInsets.only(left: 15.h, right: 16.h, bottom: 32.v))));
        });
  }
  /// Section Widget


  /// Section Widget
  Widget _buildExtend(BuildContext context) {
    return CustomElevatedButton(
        width: 97.h,
        text: "Extend",
        margin: EdgeInsets.only(top: 9.v, bottom: 11.v),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.labelLargeInterBlack900);
  }

  /// Section Widget
  Widget _buildAdvDetailsOne(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 10.v),
          CustomImageView(
              imagePath: post.url,
              height: 304.v,
              width: 296.h,
              radius: BorderRadius.circular(10.h)),
          SizedBox(height: 5.v),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(children: [
                    Opacity(
                        opacity: 0.5,
                        child: CustomImageView(
                            imagePath:
                            ImageConstant.imgBiEyeFillOnprimarycontainer,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(top: 1.v))),
                    Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text("${post.totalviews}",
                            style: CustomTextStyles.labelLargeGray400))
                  ]),
                  SizedBox(height: 5.v),
                  SizedBox(
                      width: 41.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGameIconsClick,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(bottom: 2.v)),
                            Text("${post.moneyspent}",
                                style: CustomTextStyles.labelLargeGray400)
                          ])),
                  SizedBox(height: 1.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text("₹${post.budget}",
                          style: CustomTextStyles.labelLargeGray400))
                ]),
                _buildExtend(context)
              ])
        ]));
  }



  /// Navigates to the editTabContainerScreen when the action is triggered.
  onTapTxtEditMore(BuildContext context) {
   // Navigator.pushNamed(context, AppRoutes.editTabContainerScreen);
  }
}


