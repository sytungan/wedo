import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wedo/views/pages/point/bloc/point_bloc.dart';
import 'package:wedo/views/widgets/components/components.dart';

import 'widgets/point_history_item.dart';

class PointHistoryPage extends StatelessWidget {
  const PointHistoryPage({Key? key}) : super(key: key);

  Widget itemBuilder(BuildContext context, index) {
    final item = context.read<PointBloc>().state.data[index];
    return PointHistoryItem(
      title: item.title,
      prefix: (item.prefix ?? ""),
      amount: (item.amount ?? 1),
      created: item.created,
    );
  }

  Widget separatorBuilder(BuildContext context, index) {
    return const Divider();
  }

  @override
  Widget build(BuildContext context) {
    RefreshController refreshController = RefreshController();
    return BlocProvider(
      create: (context) => PointBloc(),
      child: Scaffold(
          appBar: AppAppBar(
            appBarType: AppBarType.offWhite,
            leading: GoBackButton(
              appBarType: AppBarType.offWhite,
              onTap: () => Navigator.pop(context),
            ),
            title: const TextTitle(
              appBarType: AppBarType.offWhite,
              title: 'Point History',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              // style:
              //     TextStyles.pangram.boldTitle.copyWith(color: AppColors.charcoal),
            ),
          ),
          body: BlocBuilder<PointBloc, PointState>(
            builder: (context, state) {
              final bloc = context.read<PointBloc>();
              return SmartRefresher(
                enablePullDown: state.canLoadMore,
                onLoading: () => bloc.add(LoadMore()),
                controller: refreshController,
                child: ListView.separated(
                    itemBuilder: itemBuilder,
                    separatorBuilder: separatorBuilder,
                    itemCount: state.data.length),
              );
            },
          )),
    );
  }
}
