import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key? key}) : super(key: key);

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
        padding: EdgeInsets.all(16),
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
            Row(children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: AppColors.fireOpal),
                child: const Text(
                  "History",
                  style: TextStyle(
                      color: AppColors.charcoal, fontWeight: FontWeight.bold),
                ),
              ),
              Text("24-04-202"),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("src"),
              )
            ]),
            const Text(
              "UX Writing History Page",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
            ),
            const Text(
              "Copywriting, AIDA format, call-to-actions, and MS Word",
              style: TextStyle(fontSize: 14.0),
            )
          ],
        ),
      ),
    );
  }
}
