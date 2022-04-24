import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/views/widgets/components/feature_card/feature_card.dart';
import 'package:wedo/views/widgets/components/task_card/task_card.dart';

import '../bloc/home_bloc.dart';

class HomeIssueSection extends StatelessWidget {
  const HomeIssueSection({Key? key, this.moreButtonTapped, this.productTapped})
      : super(key: key);

  final VoidCallback? moreButtonTapped;
  final void Function(int)? productTapped;

  Widget itemBuilder(BuildContext context, int index) {
    final state = context.read<HomeBloc>().state;
    final item = state.home.task?[index];
    return Container(
      child: TaskCard(
        date: '23-02-2022',
        desc: item?.title ?? '',
        imgUrl: item?.thumbnail ?? 'https://picsum.photos/536/354',
        point: (item?.point ?? 0).toString(),
        taskName: item?.title ?? 'Test task',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<HomeBloc>().state;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: moreButtonTapped,
            child: InkWell(
              onTap: moreButtonTapped,
              child: Row(
                children: [
                  const Text(
                    'New issues',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 240,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            physics: BouncingScrollPhysics(),
            itemCount: (state.home.task ?? []).length,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20,
              crossAxisCount: 1,
              childAspectRatio: 200 / 50,
            ),
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
