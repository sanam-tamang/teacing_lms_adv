import 'package:go_router/go_router.dart';
import 'package:teaching_lms_adv/core/pages/splash_page.dart';
import 'package:teaching_lms_adv/core/routes/route_name.dart';
import 'package:teaching_lms_adv/features/auth/pages/login_page.dart';
import 'package:teaching_lms_adv/features/home/pages/home_page.dart';

class AppRoute {
  static GoRouter router() {
    return GoRouter(
      initialLocation: RouteName.splash.path,

      routes: [
        GoRoute(
          path: RouteName.splash.path,
          name: RouteName.splash,
          builder: (context, state) {
            return SplashPage();
          },
        ),

        GoRoute(
          path: RouteName.home.path,
          name: RouteName.home,

          builder: (context, state) {
            return HomePage();
          },
        ),

        GoRoute(
          path: RouteName.login.path,
          name: RouteName.login,

          builder: (context, state) {
            return LoginPage();
          },
        ),
      ],
    );
  }
}
