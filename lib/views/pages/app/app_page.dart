import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/views/pages/pages.dart';
import 'package:wedo/views/pages/store/store_page.dart';
import 'widgets/widgets.dart';
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
            body: IndexedStack(
              index: state.tabIndex,
              children: const [
                HomePage(),
                StorePage(),
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
                  icon: const Icon(Icons.store),
                  title: const Text('Store'),
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