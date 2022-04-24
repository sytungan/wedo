import 'package:flutter/material.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/data/services/remote/store.dart';
import 'package:wedo/views/widgets/widgets.dart';
import 'package:numberpicker/numberpicker.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.id,
      required this.name,
      required this.desc,
      required this.point,
      required this.url,
      required this.quantity,
      required this.callBack})
      : super(key: key);
  final String? id;
  final String? name;
  final String? desc;
  final int? point;
  final String? url;
  final int? quantity;
  final VoidCallback callBack;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<bool>(
          context: context,
          builder: (_) => SampleBottomSheet(
            id: id,
            name: name,
            desc: desc,
            point: point,
            url: url,
            quantity: quantity,
          ),
        ).then((value) {
          if (value ?? false) callBack();
        });
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

class SampleBottomSheet extends StatefulWidget {
  const SampleBottomSheet({
    Key? key,
    required this.id,
    required this.name,
    required this.desc,
    required this.point,
    required this.url,
    required this.quantity,
  }) : super(key: key);
  final String? id;
  final String? name;
  final String? desc;
  final int? point;
  final String? url;
  final int? quantity;

  @override
  State<SampleBottomSheet> createState() => _SampleBottomSheetState();
}

class _SampleBottomSheetState extends State<SampleBottomSheet> {
  int pickValue = 1;
  int totalValue = 1;

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const BottomSheetAppBar(title: ""),
          const SizedBox(height: 20),
          Expanded(
            child: SizedBox(
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.url ?? "",
                ),
              ),
            ),
            flex: 8,
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Text(
              (widget.name ?? ""),
              style: const TextStyle(
                  color: AppColors.charcoal,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: Text(
              (widget.desc ?? ""),
              style: const TextStyle(
                  color: AppColors.charcoal,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Spacer(),
              Expanded(
                child: Text(
                  "${widget.point} Points",
                  style: const TextStyle(
                      color: AppColors.atWareOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                flex: 4,
              ),
              Expanded(
                child: NumberPicker(
                  value: pickValue,
                  minValue: 0,
                  maxValue: widget.quantity!,
                  axis: Axis.horizontal,
                  onChanged: (value) => setState(() {
                    pickValue = value;
                    totalValue = pickValue * widget.point!;
                  }),
                ),
                flex: 6,
              ),
              const Spacer(),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              const Expanded(
                child: Text(
                  "Total:",
                  style: TextStyle(
                      color: AppColors.atWareBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                flex: 4,
              ),
              Expanded(
                child: Text(
                  totalValue.toString() + " Points",
                  style: const TextStyle(
                      color: AppColors.atWareBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                flex: 4,
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
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
              onPressed: () {
                BuyService().buyProduct(widget.id!, pickValue.toString());

                Navigator.pop(context, true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
