import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imgUrl,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String description;
  final String imgUrl;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 224 / 175,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 3),
            Expanded(
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
