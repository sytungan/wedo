import 'dart:ui';

import 'package:flutter/material.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height -
          (MediaQueryData.fromWindow(window).padding.top + kToolbarHeight),
      child: SafeArea(
        minimum: const EdgeInsets.only(bottom: 48),
        child: Column(
          children: [
            SizedBox(
              height: 24,
              child: Center(
                child: Container(
                  height: 4,
                  width: 96,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(2.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}
