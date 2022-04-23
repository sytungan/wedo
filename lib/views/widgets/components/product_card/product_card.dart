import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/widgets/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.id,
      required this.name,
      required this.desc,
      required this.point,
      required this.url})
      : super(key: key);
  final String? id;
  final String? name;
  final String? desc;
  final int? point;
  final String? url;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context, builder: (_) => const SampleBottomSheet());
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? "",
                    style: const TextStyle(
                        color: AppColors.charcoal,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "$point Points",
                    style: const TextStyle(
                        color: AppColors.atWareOrange,
                        fontWeight: FontWeight.w800),
                  ),

                  // BlocProvider(
                  //   create: (context) => NumberpickerBloc(),
                  //   child: BlocBuilder<NumberpickerBloc, NumberpickerState>(
                  //     builder: (context, state) {
                  //       return InkWell(
                  //         child: Text("${state.amount}"),
                  //         onTap: () {
                  //           showModalBottomSheet(
                  //               context: context,
                  //               builder: (BuildContext ctx) {
                  //                 return BlocProvider.value(
                  //                   value: BlocProvider.of<NumberpickerBloc>(
                  //                       context),
                  //                   child: BottomSheetContainer(
                  //                       child: _IntegerExample()),
                  //                 );
                  //               },);
                  //         },
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
              flex: 12,
            ),
            const Expanded(
              child: SizedBox(),
              flex: 1,
            ),
            Expanded(
              child: SizedBox(
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    url ?? "",
                  ),
                ),
              ),
              flex: 8,
            )
          ],
        ),
      ),
    );
  }
}

class SampleBottomSheet extends StatelessWidget {
  const SampleBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const BottomSheetAppBar(title: 'TEST'),
          const SizedBox(height: 100),
          Container(
            constraints: const BoxConstraints(maxWidth: 500),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppButton(
              width: double.infinity,
              child: const Text(
                'Buy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              buttonStyle: ButtonStyles.elevated,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
