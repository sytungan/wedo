import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/pages/point/widgets/point_section.dart';
import 'package:wedo/views/widgets/components/components.dart';

class PointHistoryPage extends StatefulWidget {
  const PointHistoryPage({Key? key}) : super(key: key);

  @override
  State<PointHistoryPage> createState() => _PointHistoryPageState();
}

class _PointHistoryPageState extends State<PointHistoryPage> {
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
          title: 'Point History',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          // style:
          //     TextStyles.pangram.boldTitle.copyWith(color: AppColors.charcoal),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [],
      ),
    );
  }
}
