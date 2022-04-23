
import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/components/task_card/task_card.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({ Key? key }) : super(key: key);

  Widget itemBuilder(ctx, idx){
    return const TaskCard(
        date: '23-04-2022',
        desc: 'Task eheheheh',
        imgUrl: 'https://pbs.twimg.com/media/FFWmiE8acAAHV1o?format=jpg&name=small',
        point: '999',
        taskName: 'Bai Lon chim en',
      );
  }
  Widget separatorBuilder(ctx,idx){
    return const SizedBox(height: 16);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(itemBuilder: itemBuilder, itemCount: 20,separatorBuilder: separatorBuilder,),
    );
  }
}