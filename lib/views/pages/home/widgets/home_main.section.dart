import 'package:flutter/material.dart';
import 'package:wedo/views/pages/home/widgets/feature_section.dart';
import 'package:wedo/views/pages/home/widgets/home_issue_section.dart';
import 'package:wedo/views/pages/home/widgets/home_product_section.dart';
import 'package:wedo/views/widgets/components/feature_card/feature_card.dart';

class HomeMainSection extends StatelessWidget {
  const HomeMainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -14.0, 0.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [FeatureSection(), HomeIssueSection(), HomeProductSection()],
      ),
    );
  }
}
