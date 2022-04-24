import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wedo/views/pages/app/bloc/app_bloc.dart';
import 'package:wedo/views/pages/home/bloc/home_bloc.dart';
import 'package:wedo/views/widgets/bottom_sheets/sample/sample_bottom_sheet.dart';
import 'package:wedo/views/widgets/components/feature_card/feature_card.dart';

class HomeNewsSection extends StatelessWidget {
  const HomeNewsSection(
      {Key? key,
      this.moreButtonTapped,
      this.productTapped,
      this.title,
      this.image})
      : super(key: key);

  final VoidCallback? moreButtonTapped;
  final void Function(int)? productTapped;
  final String? title;
  final String? image;
  Widget itemBuilder(BuildContext context, int index) {
    final item = context.read<HomeBloc>().state.home.news?[index];
    print(context.read<HomeBloc>().state.home.news);
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context, builder: (_) => SampleBottomSheet());
      },
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.55), BlendMode.dstATop),
                  image: new NetworkImage(
                    item?.thumbnail ??
                        'https://images.unsplash.com/photo-1514845505178-849cebf1a91d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Text(
                  item?.title ?? 'Birthday',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: moreButtonTapped,
            child: InkWell(
              onTap: moreButtonTapped,
              child: Row(
                children: [
                  const Text(
                    'News',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 240,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            physics: BouncingScrollPhysics(),
            itemCount: (context.read<HomeBloc>().state.home.news ?? []).length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 40,
              crossAxisCount: 1,
              childAspectRatio: 185 / 136,
            ),
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
