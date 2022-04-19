import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/bottom_sheets/sample/sample_bottom_sheet.dart';
import '../../widgets/components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppButton(
              child: const Text('PRESS'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (builder) => const SampleBottomSheet(),
                );
              },
            ),
            AppButton(
              child: const Text('PRESS'),
              buttonStyle: ButtonStyles.outlined,
            ),
            AppButton(
              child: const Text(
                'PRESS',
                style: TextStyle(color: Colors.white),
              ),
              buttonStyle: ButtonStyles.elevatedRadius,
            ),
            AppButton(
              child: const Text('PRESS'),
              buttonStyle: ButtonStyles.outlinedRadius,
            ),
          ],
        ),
      ),
    );
  }
}
