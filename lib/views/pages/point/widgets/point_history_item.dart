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
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(
            children: [
              CircleAvatar(
                child: (prefix == '-')
                    ? const Icon(
                        Icons.add,
                        size: 18,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.text_decrease,
                        size: 18,
                        color: Colors.green,
                      ),
              ),
            ],
          )),
    );
  }
}
