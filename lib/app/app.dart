
import 'package:posthub/Ui/Splash/splash_view.dart';
import 'package:posthub/Ui/dashboard/dashboard.dart';
import 'package:posthub/Ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:posthub/Ui//login/login_view.dart';
import 'package:posthub/webservice/apiservice.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: DashBoardView),

  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),


  ],
)
class AppSetup {}
