import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wedo/config/routes/router.gr.dart';
import 'package:wedo/views/pages/app/bloc/app_bloc.dart';
import 'package:wedo/views/pages/home/bloc/home_bloc.dart';
import 'package:wedo/views/pages/home/widgets/hello_user_section.dart';
import 'package:wedo/views/pages/home/widgets/home_main.section.dart';
import 'package:wedo/views/pages/login/bloc/login_bloc.dart';
import 'package:wedo/views/widgets/bottom_sheets/sample/sample_bottom_sheet.dart';
import '../../widgets/components/components.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return BlocProvider(
          create: (context) => HomeBloc()..add(HomeGet()),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final bloc = context.read<HomeBloc>();
              return Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    title: Text('Funt Point'),
                  ),
                  // appBar: AppAppBar(),
                  body: SmartRefresher(
                    enablePullUp: false,
                    enablePullDown: true,
                    onRefresh: () => bloc.add(Refresh()),
                    controller: bloc.refreshController,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        HelloUserSection(
                          onPointPress: () =>
                              context.router.push(const PointRoute()),
                          onLogoutPress: () =>
                              context.read<LoginBloc>().add(LogoutPress()),
                        ),
                        HomeMainSection(),
                      ],
                    ),
                  ));
            },
          ),
        );
      },
    );
  }
}
