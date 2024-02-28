




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:posthub/app/app.router.dart';

import '../../app/utils.dart';
import '../home/user.dart';


class DetailsViewModel extends BaseViewModel {
  late Post post;
  late String email="",name="",phoneNumber="",photoURL="";
  var provider;
  init() async {
    SharedPreferences prefs =await SharedPreferences.getInstance();
    email=prefs.getString("email")??"";
    name=prefs.getString("name")??"";
    phoneNumber=prefs.getString("phoneNumber")??"";
    photoURL=prefs.getString("photoURL")??"";
    notifyListeners();
  }
  DetailsViewModel({required this.post});

  TextEditingController frameEighteenController = TextEditingController();

  TextEditingController frameNineteenController = TextEditingController();
  void Login(){

    navigationService.navigateTo(Routes.dashBoardView);
  }

  }
