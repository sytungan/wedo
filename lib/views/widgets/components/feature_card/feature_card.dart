import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
    this.title,
    this.image,
    this.onPressed,
    this.child,
    this.point,
  }) : super(key: key);

  final String? title;
  final Widget? child;
  final String? image;
  final String? point;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () => onPressed?.call(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.black12,
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.srcOver),
                image: new NetworkImage(
                  image ?? 'https://picsum.photos/536/354',
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              title ?? 'Test',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              point ?? '0',
              style: TextStyle(
                  color: AppColors.atWareBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColors.atWareOrange,
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                'GIVE AWAY',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        )
      ],
    );
  }
}
