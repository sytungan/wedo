import 'package:wedo/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/components/components.dart';

abstract class AppBarLeading extends StatelessWidget {
  final VoidCallback? onTap;
  final AppBarType appBarType;

  const AppBarLeading({
    Key? key,
    required this.onTap,
    required this.appBarType,
  }) : super(key: key);
}

class GoBackButton extends AppBarLeading {
  const GoBackButton({
    Key? key,
    required VoidCallback? onTap,
    AppBarType appBarType = AppBarType.defaultFireOpal,
  }) : super(
          key: key,
          onTap: onTap,
          appBarType: appBarType,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}

class HelloHandButton extends AppBarLeading {
  const HelloHandButton({
    Key? key,
    required VoidCallback? onTap,
    AppBarType appBarType = AppBarType.defaultFireOpal,
  }) : super(key: key, onTap: onTap, appBarType: appBarType);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Image.asset(
          'images/white-hello-hand.gif',
          fit: BoxFit.cover,
          color: appBarType == AppBarType.defaultFireOpal
              ? AppColors.babyPowder
              : AppColors.charcoal,
        ),
      ),
    );
  }
}
