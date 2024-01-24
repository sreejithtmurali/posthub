import '../../app/app.router.dart';
import '../home_page/widgets/column_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:posthub/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 28.v),
                decoration: AppDecoration.fillGray,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Column(children: [
                          _buildThirtyTwo(context),
                          SizedBox(height: 32.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("Quick Access",
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 12.v),
                          _buildColumn(context),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, bottom: 3.v),
                                        child: Text("1/3 Campaigns",
                                            style: theme.textTheme.labelLarge)),
                                    Container(
                                        height: 24.v,
                                        margin: EdgeInsets.only(left: 59.h),
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: 0,
                                            count: 3,
                                            effect: ScrollingDotsEffect(
                                                spacing: 8,
                                                activeDotColor:
                                                    theme.colorScheme.primary,
                                                dotColor: theme.colorScheme
                                                    .secondaryContainer,
                                                dotHeight: 8.v,
                                                dotWidth: 8.h)))
                                  ])),
                          SizedBox(height: 37.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("My Ads.",
                                      style: theme.textTheme.titleMedium))),
                          SizedBox(height: 10.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle5,
                              height: 336.v,
                              width: 328.h,
                              radius: BorderRadius.circular(10.h)),
                          SizedBox(height: 16.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle6,
                              height: 336.v,
                              width: 328.h,
                              radius: BorderRadius.circular(10.h)),
                          SizedBox(height: 8.v),
                          _buildNineteen(context),
                          SizedBox(height: 21.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle7,
                              height: 336.v,
                              width: 328.h,
                              radius: BorderRadius.circular(10.h),
                              onTap: () {
                                onTapImgImage(context);
                              }),
                          SizedBox(height: 16.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle8,
                              height: 336.v,
                              width: 328.h,
                              radius: BorderRadius.circular(10.h))
                        ]))))));
  }

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup2,
                  height: 33.v,
                  width: 104.h,
                  margin: EdgeInsets.only(bottom: 10.v)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child:
                            Text("Hello", style: theme.textTheme.labelLarge)),
                    Text("Anand Narayanan", style: theme.textTheme.labelLarge)
                  ])),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse1,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(20.h),
                  margin: EdgeInsets.only(left: 4.h, top: 4.v))
            ]));
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 136.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return ColumnItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v),
              decoration: BoxDecoration(
                  color: appTheme.redA700,
                  borderRadius: BorderRadius.circular(8.h))),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Admin Rejected the post ",
                        style: CustomTextStyles.labelLargeff161616),
                    TextSpan(
                        text: "Why?",
                        style: CustomTextStyles.labelLargeff161616Bold
                            .copyWith(decoration: TextDecoration.underline))
                  ]),
                  textAlign: TextAlign.left)),
          Spacer(),
          Text("Remove",
              style: CustomTextStyles.labelLargeBold
                  .copyWith(decoration: TextDecoration.underline))
        ]));
  }

  /// Navigates to the advDetailsOneScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context,  Routes.homeView);
  }
}
