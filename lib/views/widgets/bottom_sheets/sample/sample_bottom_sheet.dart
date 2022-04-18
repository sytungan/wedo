import 'package:wedo/views/widgets/components/components.dart';
import 'package:flutter/material.dart';

class SampleBottomSheet extends StatelessWidget {
  const SampleBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          BottomSheetAppBar(title: 'TEST'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
