import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/components/components.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({Key? key}) : super(key: key);
  Widget itemBuilder(BuildContext context, int index) {
    return FeatureCard();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
            margin: EdgeInsets.all(50),
            height: 200,
            child: PageView.builder(
              itemBuilder: itemBuilder,
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              pageSnapping: true,
            )),
      ),
    );
  }
}
