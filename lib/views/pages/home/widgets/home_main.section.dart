import 'package:flutter/material.dart';

class HomeMainSection extends StatelessWidget {
  const HomeMainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -14.0, 0.0),
      height: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    );
  }
}
