import 'dart:html';

import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';
import '../../widgets/components/components.dart';

class PointPage extends StatefulWidget {
  const PointPage({Key? key}) : super(key: key);

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        appBarType: AppBarType.offWhite,
        leading: GoBackButton(
          appBarType: AppBarType.offWhite,
          onTap: () => Navigator.pop(context),
        ),
        title: const TextTitle(
          appBarType: AppBarType.offWhite,
          title: 'Fun Point',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          // style:
          //     TextStyles.pangram.boldTitle.copyWith(color: AppColors.charcoal),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
                color: AppColors.backgroundGrey),
            margin: EdgeInsets.all(20),
            child: Text("Your point:"),
          )
        ],
      ),
    );
  }
}
