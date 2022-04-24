import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/data/services/remote/home/home_service.dart';
import 'package:wedo/views/pages/home/bloc/home_bloc.dart';
import 'package:wedo/views/widgets/components/components.dart';

class FeatureSection extends StatefulWidget {
  const FeatureSection({Key? key}) : super(key: key);

  @override
  State<FeatureSection> createState() => _FeatureSectionState();
}

class _FeatureSectionState extends State<FeatureSection> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool end = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_currentPage == 3) {
        end = true;
      } else if (_currentPage == 0) {
        end = false;
      }

      if (end == false) {
        _currentPage++;
      } else {
        _currentPage--;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeOut,
      );
    });
  }

  Widget itemBuilder(BuildContext context, int index) {
    final state = context.read<HomeBloc>().state;
    final item = state.home.activity?[index];
    return FeatureCard(
      title: item?.title,
      point: item?.point.toString(),
      image: item?.thumbnail,
      onPressed: () {
        HomeService().earnPoint(item!.id!).then((value) {
          var a = value.data['point'];
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Congratulation!'),
              content: Text('You have received $a !'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          );

          context.read<HomeBloc>().refreshController.requestRefresh();
        }).catchError((err) {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('Sorry!'),
              content: const Text('You have received from this give away !'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<HomeBloc>().state;
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
            margin: EdgeInsets.all(50),
            height: 200,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: itemBuilder,
              physics: BouncingScrollPhysics(),
              itemCount: (state.home.activity ?? []).length,
              pageSnapping: true,
            )),
      ),
    );
  }
}
