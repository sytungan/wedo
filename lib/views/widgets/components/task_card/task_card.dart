import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class TaskCard extends StatelessWidget {
  const TaskCard(
      {Key? key,
      required this.imgUrl,
      required this.point,
      required this.taskName,
      required this.desc,
      required this.date})
      : super(key: key);
  final String imgUrl;
  final String point;
  final String taskName;
  final String desc;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColors.juiceGrape,
      ),
      height: 130,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.lightBlueAccent),
                child: Text(
                  point,
                  style: const TextStyle(
                      color: AppColors.atWareBlue, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Text(date),
                  const SizedBox(width: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      imgUrl,
                      width: 30,
                      height: 30,
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              )
            ]),
            Text(
              taskName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
            ),
            Text(
              desc,
              style: const TextStyle(fontSize: 14.0),
            )
          ],
        ),
      ),
    );
  }
}
