import 'package:auto_route/auto_route.dart';
import 'package:wedo/views/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: AppPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: PointPage),
    AutoRoute(page: PointHistoryPage)
  ],
)
class $AppRouter {}
