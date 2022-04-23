import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class HelloUserSection extends StatelessWidget {
  HelloUserSection({Key? key, this.onPointPress}) : super(key: key);
  final VoidCallback? onPointPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      color: Colors.black,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            child: const Text('U'),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'username'.toUpperCase(),
                style: TextStyle(
                    color: AppColors.white, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              InkWell(
                onTap: () => onPointPress?.call(),
                child: Row(
                  children: [
                    Text('572',
                        style: TextStyle(
                            color: AppColors.atWareBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'point',
                      style: TextStyle(
                          color: AppColors.atWareOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
