import 'package:auto_route/auto_route.dart';
import 'package:wedo/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AppPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
