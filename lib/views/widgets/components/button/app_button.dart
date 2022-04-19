import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.width,
    this.height = 48,
    this.title,
    this.onPressed,
    this.buttonStyle,
    this.child,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? title;
  final Widget? child;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: child ??
            Text(
              title ?? '',
              style: buttonStyle?.textStyle,
            ),
        onPressed: onPressed,
      ),
      decoration: buttonStyle?.decoration,
    );
  }
}

class ButtonStyle {
  ButtonStyle({
    this.textStyle,
    this.decoration,
  });
  final TextStyle? textStyle;
  final Decoration? decoration;
}

class ButtonStyles {
  ButtonStyles._();
  static ButtonStyle get elevated => ButtonStyle(
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          color: AppColors.black,
        ),
      );

  static ButtonStyle get outlined => ButtonStyle(
        decoration: const ShapeDecoration(
          shape: StadiumBorder(
            side: BorderSide(
              width: 1,
              color: AppColors.black,
            ),
          ),
          color: Colors.transparent,
        ),
      );

  static ButtonStyle get elevatedRadius => ButtonStyle(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          color: AppColors.black,
        ),
      );
  static ButtonStyle get outlinedRadius => ButtonStyle(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(
              width: 1,
              color: AppColors.black,
            ),
          ),
          color: Colors.transparent,
        ),
      );
}
