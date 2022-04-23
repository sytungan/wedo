import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
    this.title,
    this.onPressed,
    this.child,
  }) : super(key: key);

  final String? title;
  final Widget? child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
