import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetAppBar extends StatelessWidget {
  const BottomSheetAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
    this.titleColor,
    this.backgroundColor,
  }) : super(key: key);

  final String title;
  final Widget? leading;
  final Widget? trailing;
  final Color? titleColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(
        title,
        style: TextStyle(color: titleColor ?? Colors.black),
      ),
      backgroundColor: backgroundColor,
      border: null,
      leading: leading ??
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(CupertinoIcons.back),
          ),
      trailing: trailing,
    );
  }
}
