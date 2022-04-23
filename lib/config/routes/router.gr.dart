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

import '../../views/pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    AppRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AppPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PointRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PointPage());
    },
    PointHistoryRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PointHistoryPage());
    },
    StoreRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.StorePage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(LoginRoute.name, path: '/'),
        _i2.RouteConfig(AppRoute.name, path: '/app-page'),
        _i2.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i2.RouteConfig(PointRoute.name, path: '/point-page'),
        _i2.RouteConfig(PointHistoryRoute.name, path: '/point-history-page'),
        _i2.RouteConfig(StoreRoute.name, path: '/store-page')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i1.AppPage]
class AppRoute extends _i2.PageRouteInfo<void> {
  const AppRoute() : super(AppRoute.name, path: '/app-page');

  static const String name = 'AppRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.PointPage]
class PointRoute extends _i2.PageRouteInfo<void> {
  const PointRoute() : super(PointRoute.name, path: '/point-page');

  static const String name = 'PointRoute';
}

/// generated route for
/// [_i1.PointHistoryPage]
class PointHistoryRoute extends _i2.PageRouteInfo<void> {
  const PointHistoryRoute()
      : super(PointHistoryRoute.name, path: '/point-history-page');

  static const String name = 'PointHistoryRoute';
}

/// generated route for
/// [_i1.StorePage]
class StoreRoute extends _i2.PageRouteInfo<void> {
  const StoreRoute() : super(StoreRoute.name, path: '/store-page');

  static const String name = 'StoreRoute';
}
