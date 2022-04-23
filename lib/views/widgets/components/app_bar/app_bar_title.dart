import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/widgets/components/components.dart';

abstract class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
    required this.appBarType,
  }) : super(
          key: key,
        );

  final AppBarType appBarType;
}

class LogoTitle extends AppBarTitle {
  const LogoTitle({
    Key? key,
    AppBarType appBarType = AppBarType.defaultFireOpal,
  }) : super(
          key: key,
          appBarType: appBarType,
        );
  @override
  Widget build(BuildContext context) {
    // return SvgPicture.asset(
    //   'images/smthgood-logo.svg',
    //   height: 30,
    //   color: appBarType == AppBarType.defaultFireOpal
    //       ? AppColors.babyPowder
    //       : AppColors.charcoal,
    // );
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Icon(Icons.arrow_back_ios),
    );
  }
}

class TextTitle extends AppBarTitle {
  const TextTitle({
    Key? key,
    AppBarType appBarType = AppBarType.defaultFireOpal,
    required this.title,
    this.style,
  }) : super(
          key: key,
          appBarType: appBarType,
        );

  final String title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: style
        // ?? TextStyles.pangram.boldTitle.copyWith(
        //   color: appBarType == AppBarType.defaultFireOpal
        //       ? AppColors.babyPowder
        //       : AppColors.charcoal,
        // ),
        );
  }
}
