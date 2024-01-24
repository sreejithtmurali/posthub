import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:posthub/app/size_utils.dart';
import 'package:posthub/webservice/productprovider.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';


import 'app/app.locator.dart';
import 'app/app.router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCKj6I6hgGBepOz1UtJGe2ZsiChuCH7PpM",
      appId: "1:429311905373:android:58e646f8992123f8bcc7b4",
      messagingSenderId: "429311905373",
      projectId: "posthub-44ebb",
        storageBucket:"posthub-44ebb.appspot.com"
    ),
  );
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
         debugShowCheckedModeBanner: false,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,

        );
      },

    );
  }
}


