import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/config/routes/router.gr.dart';
import 'package:wedo/views/pages/pages.dart';
import 'widgets/widgets.dart';
import 'bloc/app_bloc.dart';
import 'package:auto_route/auto_route.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          final bloc = context.read<AppBloc>();
          return Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: const Text('Tab'),
            ),
            body: IndexedStack(
              index: state.tabIndex,
              children: const [
                HomePage(),
                DemoPage(),
              ],
            ),
            bottomNavigationBar: AppBottomBar(
              onTap: (index) {
                bloc.add(ChangeTab(index));
              },
              currentIndex: state.tabIndex,
              duration: const Duration(milliseconds: 300),
              items: [
                AppBottomBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                AppBottomBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text('User'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
