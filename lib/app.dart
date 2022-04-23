import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/config/themes/themes.dart';
import 'package:wedo/views/pages/login/bloc/login_bloc.dart';
import 'config/routes/router.gr.dart';
import 'data/services/local/local.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  Future<bool> loginLocal() async {
    final localUser = await LocalStorage.loadToObject(LocalKeys.keyUser);
    return (localUser != null) ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: loginLocal(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          return BlocProvider(
            create: (context) => LoginBloc(snapshot.data ?? false),
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return MaterialApp.router(
                  theme: AppThemes.light,
                  routerDelegate: AutoRouterDelegate.declarative(
                    _appRouter,
                    routes: (_) => [
                      // if the user is logged in, they may proceed to the main App
                      if (state.runtimeType == Authenticated)
                        AppRoute()
                      // if they are not logged in, bring them to the Login page
                      else
                        const LoginRoute(),
                    ],
                  ),
                  routeInformationParser: _appRouter.defaultRouteParser(),
                );
              },
            ),
          );
        });
  }
}
