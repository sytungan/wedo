import 'package:flutter/material.dart';
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
      appBar: SmthgoodAppBar(
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [Text("Your point")],
          )
        ],
      ),
    );
  }
}
