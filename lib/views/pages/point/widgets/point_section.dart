import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class PointSection extends StatelessWidget {
  const PointSection({
    Key? key,
    this.icon,
    this.title,
    this.onPressed,
  }) : super(key: key);

  final IconData? icon;
  final String? title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Row(
          children: [
            Expanded(
                child: Icon(icon, size: 24, color: AppColors.atWareOrange)),
            Expanded(
              child: Text(
                title ?? "Undefine",
                style: const TextStyle(
                    color: AppColors.atWareBlue,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              flex: 5,
            ),
            const Expanded(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
