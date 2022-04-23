import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/config/routes/router.gr.dart';
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
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          context.read<HomeBloc>().add(HomeGet());
          return Scaffold(
            // appBar: AppAppBar(),
            body: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                HelloUserSection(
                  onPointPress: () => context.router.push(const PointRoute()),
                  onLogoutPress: () =>
                      context.read<LoginBloc>().add(LogoutPress()),
                ),
                HomeMainSection(),
              ],
            ),
          );
        },
      ),
    );
  }
}
