import 'package:flutter/material.dart';
import '../store/store_page.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ProductListPage(),
    );
  }
}
