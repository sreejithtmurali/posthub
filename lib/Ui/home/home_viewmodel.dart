




import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.router.dart';
import '../../app/utils.dart';

import '../../webservice/productprovider.dart';



class HomeViewModel extends BaseViewModel {
  late String email,name,phoneNumber,photoURL;
  var provider;
  init() async {
    SharedPreferences prefs =await SharedPreferences.getInstance();
    email=prefs.getString("email")??"";
    name=prefs.getString("name")??"";
    phoneNumber=prefs.getString("phoneNumber")??"";
    photoURL=prefs.getString("photoURL")??"";
    notifyListeners();
  }

  void Detailspage(){
    navigationService.navigateTo(Routes.detailsView);
  }
  void Addpage(){
    navigationService.navigateTo(Routes.addnewView);
  }
  }
