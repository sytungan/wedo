import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/widgets/components/components.dart';

enum AppBarType { defaultFireOpal, offWhite }

class SmthgoodAppBar extends AppBar {
  SmthgoodAppBar({
    Key? key,
    AppBarTitle? title,
    AppBarLeading? leading,
    this.appBarType = AppBarType.defaultFireOpal,
    PreferredSizeWidget? bottom,
    List<Widget>? actions,
    bool? centerTitle = true,
    double? leadingWidth,
    double elevation = 1,
    Color? shadowColor,
  }) : super(
          key: key,
          title: title,
          leading: leading,
          centerTitle: centerTitle,
          backgroundColor: appBarType == AppBarType.defaultFireOpal
              ? AppColors.fireOpal
              : AppColors.babyPowder,
          leadingWidth: leadingWidth ?? 44,
          bottom: bottom,
          elevation: elevation,
          actions: actions,
          shadowColor: shadowColor,
        );

  final AppBarType appBarType;
}

class SmthgoodSliverAppBar extends SliverAppBar {
  const SmthgoodSliverAppBar({
    Key? key,
    AppBarTitle? title,
    AppBarLeading? leading,
    AppBarType appBarType = AppBarType.defaultFireOpal,
    bool forceElevated = false,
    List<Widget>? actions,
    double? leadingWidth,
    double elevation = 1,
    bool? pinned,
    bool? floating,
    double? expandedHeight,
    Widget? flexibleSpace,
    bool? centerTitle = true,
  }) : super(
            key: key,
            title: title,
            leading: leading,
            backgroundColor: appBarType == AppBarType.defaultFireOpal
                ? AppColors.fireOpal
                : AppColors.babyPowder,
            leadingWidth: leadingWidth ?? 44,
            elevation: elevation,
            forceElevated: forceElevated,
            actions: actions,
            pinned: pinned ?? false,
            floating: floating ?? false,
            expandedHeight: expandedHeight,
            flexibleSpace: flexibleSpace,
            centerTitle: centerTitle);
}
