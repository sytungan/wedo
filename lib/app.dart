import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wedo/config/themes/themes.dart';
import 'package:wedo/views/pages/login/bloc/login_bloc.dart';
import 'config/routes/router.gr.dart';
import 'config/scroll_behavior.dart';
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
                return RefreshConfiguration(
                  enableBallisticLoad: true,
                  hideFooterWhenNotFull: true,
                  maxOverScrollExtent: 0,
                  enableScrollWhenTwoLevel: true,
                  child: MaterialApp.router(
                    scrollBehavior: AppScrollBehavior(),
                    theme: AppThemes.light,
                    routerDelegate: _appRouter.delegate(),
                    routeInformationParser: _appRouter.defaultRouteParser(),
                  ),
                );
              },
            ),
          );
        });
  }
}
