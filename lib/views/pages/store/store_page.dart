import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wedo/views/pages/store/bloc/store_bloc.dart';
import 'package:wedo/views/widgets/components/components.dart';
import 'package:wedo/views/widgets/components/product_card/product_card.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  Widget itemBuilder(BuildContext ctx, idx) {
    final item = ctx.read<StoreBloc>().state.listProduct[idx];
    return ProductCard(
      id: item.id,
      desc: item.description,
      name: item.title,
      url: item.thumbnail,
      point: item.price,
      quantity: item.quantity,
    );
  }

  Widget separateBuilder(ctx, idx) {
    return Divider();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreBloc(),
      child: Scaffold(
        appBar: AppAppBar(
          appBarType: AppBarType.offWhite,
          leading: GoBackButton(
            appBarType: AppBarType.offWhite,
            onTap: () => Navigator.pop(context),
          ),
          title: const TextTitle(
            appBarType: AppBarType.offWhite,
            title: 'Store',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
            // style:
            //     TextStyles.pangram.boldTitle.copyWith(color: AppColors.charcoal),
          ),
        ),
        body: BlocBuilder<StoreBloc, StoreState>(
          builder: (context, state) {
            final bloc = context.read<StoreBloc>();
            if (state.listProduct.isEmpty && state.canLoadMore) {
              bloc.add(LoadMore());
            }
            return SmartRefresher(
              enablePullUp: true,
              enablePullDown: true,
              onRefresh: () => bloc.add(Refresh()),
              onLoading: () => bloc.add(LoadMore()),
              controller: bloc.refreshController,
              child: ListView.separated(
                itemBuilder: itemBuilder,
                separatorBuilder: separateBuilder,
                itemCount: state.listProduct.length,
              ),
            );
          },
        ),
      ),
    );
  }
}
