import 'package:flutter/material.dart';
import 'package:posthub/core/app_export.dart';
import 'package:posthub/presentation/home_page/home_page.dart';
import 'package:posthub/widgets/custom_bottom_bar.dart';

import '../../app/app.router.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: Routes.homeView,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Icroundhome:
        return  Routes.homeView;
      case BottomBarEnum.Vector:
        return  Routes.homeView;
      case BottomBarEnum.Vectorblack900:
        return  Routes.homeView;
      case BottomBarEnum.Vectorblack90022x18:
        return  Routes.homeView;
      default:
        return  Routes.homeView;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case  Routes.homeView:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
