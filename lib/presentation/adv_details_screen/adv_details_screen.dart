import 'package:flutter/material.dart';
import 'package:posthub/core/app_export.dart';
import 'package:posthub/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:posthub/widgets/app_bar/appbar_title.dart';
import 'package:posthub/widgets/app_bar/custom_app_bar.dart';
import 'package:posthub/widgets/custom_elevated_button.dart';
import 'package:posthub/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AdvDetailsScreen extends StatelessWidget {
  AdvDetailsScreen({Key? key}) : super(key: key);

  TextEditingController frameEighteenController = TextEditingController();

  TextEditingController frameNineteenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildAdvDetails(context),
                      SizedBox(height: 24.v),
                      _buildFrameEighteen(context),
                      SizedBox(height: 16.v),
                      _buildFrameNineteen(context),
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
            bottomNavigationBar: _buildUpdateChanges(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Advertisement  Status"));
  }

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
  Widget _buildAdvDetails(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 10.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle7,
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
                        child: Text("1K",
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
                            Text("326",
                                style: CustomTextStyles.labelLargeGray400)
                          ])),
                  SizedBox(height: 1.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text("₹650",
                          style: CustomTextStyles.labelLargeGray400))
                ]),
                _buildExtend(context)
              ])
        ]));
  }

  /// Section Widget
  Widget _buildFrameEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: CustomTextFormField(
            controller: frameEighteenController,
            hintText: "Make your walls next level"));
  }

  /// Section Widget
  Widget _buildFrameNineteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: CustomTextFormField(
            controller: frameNineteenController,
            hintText:
                "Make awesomeness in your room office space or place you wish we provide you custom original drawing ",
            textInputAction: TextInputAction.done,
            maxLines: 4,
            contentPadding: EdgeInsets.all(8.h)));
  }

  /// Section Widget
  Widget _buildUpdateChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "Update Changes",
        margin: EdgeInsets.only(left: 15.h, right: 16.h, bottom: 32.v));
  }

  /// Navigates to the editTabContainerScreen when the action is triggered.
  onTapTxtEditMore(BuildContext context) {
   // Navigator.pushNamed(context, AppRoutes.editTabContainerScreen);
  }
}
