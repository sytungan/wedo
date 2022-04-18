import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/bottom_sheets/sample/sample_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CupertinoButton(
          child: const Text('PRESS'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (builder) => const SampleBottomSheet(),
            );
          },
        ),
      ),
    );
  }
}
