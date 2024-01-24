import 'package:flutter/material.dart';
import 'package:posthub/app/size_utils.dart';
import 'package:stacked/stacked.dart';

import '../../app/image_constant.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<LoginViewModel>.reactive(

        viewModelBuilder: ()=>LoginViewModel(),
        onViewModelReady: (model){

        },
        builder:( context,model,child){
          return SafeArea(
              child: Scaffold(
                  body: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(top: 70.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup2,
                                height: 51.v,
                                width: 161.h,
                                alignment: Alignment.center),
                            SizedBox(height: 6.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup1,
                                height: 264.v,
                                width: 320.h),
                            SizedBox(height: 30.v),
                            Container(
                                width: 297.h,
                                margin: EdgeInsets.only(left: 15.h, right: 47.h),
                                child: Text(
                                    "Hassle free Cross Platform Digital Advertisement ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleLargePrimary)),
                            SizedBox(height: 9.v),
                            Container(
                                width: 295.h,
                                margin: EdgeInsets.only(left: 15.h, right: 49.h),
                                child: Text(
                                    "Hassle free Cross Platform Digital Advertisement to boost your sale avoid mistakes while running campaign we take care for you ",
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium)),
                            SizedBox(height: 40.v),
                            CustomElevatedButton(
                                text: "Continue with google",
                                margin: EdgeInsets.only(left: 15.h, right: 16.h),
                                leftIcon: Container(
                                    margin: EdgeInsets.only(right: 8.h),
                                    child: CustomImageView(
                                        imagePath:
                                        ImageConstant.imgFlatcoloriconsgoogle,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)),
                                onPressed: () {
                                 model.Login();
                                },
                                alignment: Alignment.center),
                            SizedBox(height: 5.v)
                          ]))));
        });
  }
}


