import 'package:flutter/material.dart';

class BottomSheetWrap extends StatelessWidget {
  const BottomSheetWrap({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 48),
      child: Wrap(
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
          Container(
            child: child,
          ),
        ],
      ),
    );
  }
}
