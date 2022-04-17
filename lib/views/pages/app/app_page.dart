import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/widgets.dart';
import '../../pages/home/home_page.dart';
import '../../pages/user/user_page.dart';
import 'bloc/app_bloc.dart';

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
                UserPage(),
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
