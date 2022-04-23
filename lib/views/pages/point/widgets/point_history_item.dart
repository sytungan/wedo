import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class PointHistorySection extends StatelessWidget {
  const PointHistorySection({
    Key? key,
    this.title,
    this.prefix = '-',
    this.amount,
    this.created,
    this.onPressed,
  }) : super(key: key);

  final String? title;
  final String prefix;
  final String? amount;
  final String? created;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: prefix == '-'
              ? Color.fromARGB(255, 252, 202, 199)
              : Color.fromARGB(255, 200, 255, 202),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: CircleAvatar(
                child: prefix == '-'
                    ? const Icon(
                        Icons.remove,
                        size: 18,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.add,
                        size: 18,
                        color: Colors.green,
                      ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    title ?? "",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text(
                amount ?? "",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
