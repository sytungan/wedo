import 'package:auto_route/auto_route.dart';
import 'package:wedo/views/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AppPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: PointPage, initial: true)
  ],
)
class $AppRouter {}
