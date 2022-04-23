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
  }) : super(key: key);

  final String? title;
  final Widget? child;
  final String? image;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xff7c94b6),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: new NetworkImage(
                image ?? 'https://picsum.photos/536/354',
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.all(20),
            child: Text(
              title ?? 'Test',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
