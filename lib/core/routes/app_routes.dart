import 'package:app2/featchers/auth/presentation/pages/Login_Page.dart';
import 'package:app2/core/routes/routes_path.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static GoRoute routes = GoRoute(
    path: RoutesPath.login,
    builder: (context, state) {
      return LoginPage();
    },
    routes: [
      // GoRoute(
      //     path: RoutesPath.home,
      //     builder: (context, state) {
      //       return HomePage();
      //     })
    ],
  );
}
