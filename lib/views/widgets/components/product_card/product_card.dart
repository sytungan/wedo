import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:wedo/constants/colors.dart';
import 'package:wedo/views/widgets/components/bottom_sheet/bottom_sheet_container.dart';
import 'package:wedo/views/widgets/components/product_card/bloc/numberpicker_bloc.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.name,
      required this.desc,
      required this.point,
      required this.url})
      : super(key: key);
  final String name;
  final String desc;
  final String point;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: AppColors.charcoal, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                desc,
                style: const TextStyle(color: AppColors.mediumhGray),
              ),
              const SizedBox(height: 16),
              Text(
                point,
                style: const TextStyle(color: AppColors.charcoal),
              ),
              const SizedBox(height: 16),
              BlocProvider(
                create: (context) => NumberpickerBloc(),
                child: BlocBuilder<NumberpickerBloc, NumberpickerState>(
                  builder: (context, state) {
                    return InkWell(
                        child: Text("${state.amount}"),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext ctx) {
                                return BlocProvider.value(
                                  value: BlocProvider.of<NumberpickerBloc>(
                                      context),
                                  child: BottomSheetContainer(
                                      child: _IntegerExample()),
                                );
                              });
                        });
                  },
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              url,
            ),
          )
        ],
      ),
    );
  }
}

class _IntegerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BlocBuilder<NumberpickerBloc, NumberpickerState>(
          builder: (context, state) {
            return NumberPicker(
              value: state.amount,
              minValue: 0,
              maxValue: 100,
              onChanged: (value) =>
                  context.read<NumberpickerBloc>().add(PickValue(value)),
            );
          },
        ),
      ],
    );
  }
}
