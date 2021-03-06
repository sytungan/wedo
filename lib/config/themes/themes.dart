import 'package:wedo/config/themes/bottom_sheet_themes.dart';

import '../../constants/colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get light => ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.black,
          centerTitle: true,
        ),
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: AppColors.white,
        backgroundColor: AppColors.white,
        bottomSheetTheme: BottomSheetThemes.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      );

  static ThemeData get night => ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.black,
          centerTitle: true,
        ),
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: AppColors.white,
        backgroundColor: AppColors.white,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
          ),
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      );
}
