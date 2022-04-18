import 'package:flutter/material.dart';

class BottomSheetThemes {
  BottomSheetThemes._();
  static BottomSheetThemeData get light => const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
      );
}
