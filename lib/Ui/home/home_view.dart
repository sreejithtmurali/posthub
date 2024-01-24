import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:posthub/app/size_utils.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

import '../../app/image_constant.dart';
import '../../presentation/home_page/widgets/column_item_widget.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  int sliderIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (model) {
        model.init(context);

      },
      onDispose: (model) {
      },
      builder: (context, viewModel, child) {
        viewModel.setdata();
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
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.h),
                                decoration: AppDecoration.fillGray20001.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: theme.colorScheme.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Container(
                                    height: 120.v,
                                    width: 96.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 30.h,
                                      vertical: 33.v,
                                    ),
                                    decoration: AppDecoration.fillPrimary.copyWith(
                                      borderRadius: BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            "+",
                                            style: theme.textTheme.titleLarge,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                              "New",
                                              style: CustomTextStyles.titleMediumGray50,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 110.v,),
                              Expanded(
                                child: Container(
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                                      child: CarouselSlider.builder(
                                          options: CarouselOptions(
                                              height: 150.v,
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
                                            return Container(color: Colors.blue,);
                                          })),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, bottom: 3.v),
                                        child: Text("${sliderIndex+1}/2 Campaigns",
                                            style: theme.textTheme.labelLarge)),
                                    Container(
                                        height: 24.v,
                                        margin: EdgeInsets.only(left: 59.h),
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: sliderIndex,
                                            count: 2,
                                            effect: ScrollingDotsEffect(
                                                spacing: 8,
                                                activeDotColor: theme.colorScheme.primary,
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

                       Container(
                         height: 800.h,
                         child: ListView.builder(
                           physics: NeverScrollableScrollPhysics(),
                           itemCount: 5,
                           itemBuilder: (BuildContext context, int index) {
                           return  Padding(
                             padding: const EdgeInsets.only(top: 16.0),
                             child: Container(
                               child: Column(children: [
                                 CustomImageView(
                                     imagePath: ImageConstant.imgRectangle6,
                                     height: 336.v,
                                     width: 328.h,
                                     radius: BorderRadius.circular(10.h)),
                                 SizedBox(height: 8.v),
                                 Container(height: 20,
                                   child: Padding(
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
                                       ])),
                                 )
                               ],),),
                           );
                         },),
                       )

                        ]))))));
      },
      viewModelBuilder: () => HomeViewModel(),
    );
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




  /// Navigates to the advDetailsOneScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
   // Navigator.pushNamed(context, Route.h);
  }
}


