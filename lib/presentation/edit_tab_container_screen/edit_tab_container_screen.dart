import 'package:flutter/material.dart';
import 'package:posthub/core/app_export.dart';
import 'package:posthub/presentation/edit_page/edit_page.dart';
import 'package:posthub/presentation/onboard_one_page/onboard_one_page.dart';
import 'package:posthub/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:posthub/widgets/app_bar/appbar_title.dart';
import 'package:posthub/widgets/app_bar/custom_app_bar.dart';
import 'package:posthub/widgets/custom_outlined_button.dart';
import 'package:posthub/widgets/custom_text_form_field.dart';

class EditTabContainerScreen extends StatefulWidget {
  const EditTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EditTabContainerScreenState createState() => EditTabContainerScreenState();
}

class EditTabContainerScreenState extends State<EditTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController addCaptionValueController = TextEditingController();

  TextEditingController addDescriptionController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 32.v),
            child: Column(
              children: [
                _buildTwo(context),
                SizedBox(height: 45.v),
                _buildAddCaptionValue(context),
                SizedBox(height: 16.v),
                _buildAddDescription(context),
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
                _buildLanguage(context),
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
                    padding: EdgeInsets.only(left: 15.h),
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
                _buildOne(context),
                SizedBox(height: 17.v),
                _buildFiftyNine(context),
                SizedBox(height: 3.v),
                _buildLocation(context),
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
                SizedBox(height: 24.v),
                _buildFrameTwentySeven(context),
                SizedBox(height: 3.v),
                _buildFiftySeven(context),
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
                SizedBox(height: 8.v),
                _buildTabview(context),
                _buildTabBarView(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
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
        text: "Edit Ad.",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBrowseFiles(BuildContext context) {
    return CustomOutlinedButton(
      width: 119.h,
      text: "Browse Files",
      margin: EdgeInsets.only(bottom: 108.v),
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return SizedBox(
      height: 304.v,
      width: 329.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7304x329,
            height: 304.v,
            width: 329.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          _buildBrowseFiles(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddCaptionValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: addCaptionValueController,
        hintText: "Add Caption",
      ),
    );
  }

  /// Section Widget
  Widget _buildAddDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: addDescriptionController,
        hintText: "Add Description",
        maxLines: 5,
        contentPadding: EdgeInsets.all(8.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: languageController,
        hintText: "₹",
      ),
    );
  }

  /// Section Widget
  Widget _buildFebruary2024(BuildContext context) {
    return CustomOutlinedButton(
      width: 164.h,
      text: "22 FEBRUARY 2024",
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.outlineBlueGray1,
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(vertical: 3.v),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 160.h,
            padding: EdgeInsets.fromLTRB(27.h, 6.v, 28.h, 6.v),
            decoration: AppDecoration.outlineBluegray10002,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "22 JANUARY 2024",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          _buildFebruary2024(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Padding(
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
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: locationController,
        hintText: "Location",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwentySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "10",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "20",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "30",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "40",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "50",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "60",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "70",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "80",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "90",
            style: theme.textTheme.labelLarge,
          ),
          Text(
            "100",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return SizedBox(
      height: 30.v,
      width: 324.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup16,
            height: 6.v,
            width: 313.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 4.v,
              width: 324.h,
              margin: EdgeInsets.only(bottom: 9.v),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 324.h,
                      child: Divider(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 140.h,
                      child: Divider(
                        color: theme.colorScheme.primary,
                        indent: 69.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 58.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 30.v,
                    width: 26.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserPrimarycontainer,
                    height: 30.v,
                    width: 26.h,
                    margin: EdgeInsets.only(left: 43.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 32.v,
      width: 330.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray50,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
        ),
        tabs: [
          Tab(
            child: Text(
              "Male",
            ),
          ),
          Tab(
            child: Text(
              "Female",
            ),
          ),
          Tab(
            child: Text(
              "Unisex",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 304.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          EditPage(),
          EditPage(),
          OnboardOnePage(),
        ],
      ),
    );
  }
}
