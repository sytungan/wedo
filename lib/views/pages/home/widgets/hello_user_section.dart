import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/widgets/components/button/app_button.dart';

class HelloUserSection extends StatelessWidget {
  HelloUserSection({Key? key, this.onPointPress, this.onLogoutPress})
      : super(key: key);
  final VoidCallback? onPointPress;
  final VoidCallback? onLogoutPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      color: Color.fromRGBO(0, 0, 0, 1),
      child: Row(
        children: [
          Expanded(
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: const Text('U'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 7,
            child: Column(
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
          ),
          Expanded(
              child: AppButton(
            child: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: onLogoutPress,
          ))
        ],
      ),
    );
  }
}
