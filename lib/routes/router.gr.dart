// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    AppRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<AppRouteArgs>(
          orElse: () =>
              AppRouteArgs(title: queryParams.getString('title', "App Page")));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.AppPage(key: args.key, title: args.title));
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(AppRoute.name, path: '/'),
        _i2.RouteConfig(HomeRoute.name, path: '/home-page')
      ];
}

/// generated route for
/// [_i1.AppPage]
class AppRoute extends _i2.PageRouteInfo<AppRouteArgs> {
  AppRoute({_i3.Key? key, String title = "App Page"})
      : super(AppRoute.name,
            path: '/',
            args: AppRouteArgs(key: key, title: title),
            rawQueryParams: {'title': title});

  static const String name = 'AppRoute';
}

class AppRouteArgs {
  const AppRouteArgs({this.key, this.title = "App Page"});

  final _i3.Key? key;

  final String title;

  @override
  String toString() {
    return 'AppRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}
