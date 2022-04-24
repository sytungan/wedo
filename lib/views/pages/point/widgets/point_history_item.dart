import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PointHistoryItem extends StatelessWidget {
  const PointHistoryItem({
    Key? key,
    this.title,
    required this.prefix,
    required this.amount,
    this.created,
    this.onPressed,
  }) : super(key: key);

  final String? title;
  final String prefix;
  final int amount;
  final double? created;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: prefix == '-'
              ? const Color.fromARGB(255, 255, 250, 249)
              : const Color.fromARGB(255, 215, 253, 216),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: prefix == '-'
                  ? const Icon(
                      Icons.arrow_circle_down,
                      size: 30,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.arrow_circle_up,
                      size: 30,
                      color: Colors.green,
                    ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    "24-04-2022",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Text(
                prefix + "$amount",
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

String readTimestamp(double timestamp) {
  var now = DateTime.now();
  var format = DateFormat('dd-MM-YYYY hh:mm');
  var date = DateTime.fromMicrosecondsSinceEpoch((timestamp * 1000).round());
  var diff = date.difference(now);
  var time = '';

  if (diff.inSeconds <= 0 ||
      diff.inSeconds > 0 && diff.inMinutes == 0 ||
      diff.inMinutes > 0 && diff.inHours == 0 ||
      diff.inHours > 0 && diff.inDays == 0) {
    time = format.format(date);
  } else {
    if (diff.inDays == 1) {
      time = diff.inDays.toString() + 'DAY AGO';
    } else {
      time = diff.inDays.toString() + 'DAYS AGO';
    }
  }

  return time;
}
