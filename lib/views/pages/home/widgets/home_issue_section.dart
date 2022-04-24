import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/components/feature_card/feature_card.dart';
import 'package:wedo/views/widgets/components/task_card/task_card.dart';

class HomeIssueSection extends StatelessWidget {
  const HomeIssueSection(
      {Key? key, this.moreButtonTapped, this.productTapped})
      : super(key: key);

  final VoidCallback? moreButtonTapped;
  final void Function(int)? productTapped;

  Widget itemBuilder(BuildContext context, int index) {
    return Container(
      child: TaskCard(
        date: '23-02-2022',
        desc: 'Sua chua man hinh',
        imgUrl: 'https://picsum.photos/536/354',
        point: '50',
        taskName: 'Fix Laptop',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            itemCount: 10,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20,
              crossAxisCount: 1,
              childAspectRatio: 200 / 40,
            ),
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
