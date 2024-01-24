




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:posthub/app/app.router.dart';

import '../../app/utils.dart';


class DashBoardViewModel extends BaseViewModel {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  void Login(){

    navigationService.navigateTo(Routes.loginView);
  }

  }
