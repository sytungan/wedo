import 'package:flutter/material.dart';
import 'package:wedo/views/widgets/components/product_card/product_card.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  Widget itemBuilder(ctx, idx) {
    return ProductCard(
      desc: "Trà chanh Hong Kong - size L",
      name: "HongKong Lemon tea",
      url: 'https://picsum.photos/250?image=9',
      point: "22.500đ",
    );
  }

  Widget separateBuilder(ctx, idx) {
    return Divider();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: itemBuilder,
        itemCount: 20,
        separatorBuilder: separateBuilder,
      ),
    //   child: ProductCard(
    //   desc: "Trà chanh Hong Kong - size L",
    //   name: "HongKong Lemon tea",
    //   url: 'https://picsum.photos/250?image=9',
    //   point: "22.500đ",
    // ),
    );
  }
}
