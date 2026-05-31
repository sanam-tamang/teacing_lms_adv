import 'package:go_router/go_router.dart';
import 'package:teaching_lms_adv/core/routes/route_name.dart';
import 'package:teaching_lms_adv/features/home/pages/home_page.dart';

class AppRoute {
  static GoRouter router() {
    return GoRouter(
      initialLocation: RouteName.home.path,
      routes: [
        GoRoute(
          path: RouteName.home.path,
          name: RouteName.home,

          builder: (context, state) {
            return HomePage();
          },
        ),

        
      ],
    );
  }
}
