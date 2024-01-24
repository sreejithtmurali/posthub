import 'package:flutter/material.dart';
import 'package:posthub/app/size_utils.dart';
import 'package:posthub/webservice/productprovider.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';


import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ProductProvider>(create: (_) => ProductProvider()),

    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
       return MaterialApp(
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,

        );
      },

    );
  }
}


