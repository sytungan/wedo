import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/components/task_card/task_card.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TaskCard(),
    );
  }
}
