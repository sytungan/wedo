import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/data/models/models.dart';
import 'package:wedo/data/services/local/local.dart';
import 'package:wedo/views/pages/login/bloc/login_bloc.dart';
import 'package:wedo/views/widgets/components/button/app_button.dart';

class HelloUserSection extends StatelessWidget {
  HelloUserSection({Key? key, this.onPointPress, this.onLogoutPress})
      : super(key: key);
  final VoidCallback? onPointPress;
  final VoidCallback? onLogoutPress;

  Future<User?> loadUser() async {
    final data = await LocalStorage.loadToObject(LocalKeys.keyUser);
    if (data != null) return User.fromJson(data);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
        future: loadUser(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          } else if (snapshot.hasData && snapshot.data != null) {
            return Container(
              padding: EdgeInsets.all(22),
              color: Color.fromRGBO(0, 0, 0, 1),
              child: Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Image.network(
                        snapshot.data!.avatar!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snapshot.data!.displayName!.toUpperCase(),
                          style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 4),
                        InkWell(
                          onTap: () => onPointPress?.call(),
                          child: Row(
                            children: [
                              Text(snapshot.data!.point!.toString(),
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
          } else {
            return Container();
          }
        });
  }
}
