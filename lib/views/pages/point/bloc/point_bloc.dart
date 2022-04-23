import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wedo/data/models/models.dart';
import 'package:wedo/data/repository/point/point_repository.dart';

part 'point_event.dart';
part 'point_state.dart';

const LIMIT = 6;

class PointBloc extends Bloc<PointEvent, PointState> {
  final RefreshController refreshController = RefreshController();

  PointBloc() : super(PointInitial([], true)) {
    final reponsitory = PointHistoryRepo();
    on<LoadMore>((event, emit) async {
      await reponsitory
          .getPointHistory(state.data.length ~/ LIMIT + 1, LIMIT)
          .then(
        (value) {
          emit(PointInitial(
              state.data + (value.results ?? []), value.next != null));
          refreshController.loadComplete();
        },
      ).catchError((err) {
        refreshController.loadFailed();
      });
    });

    on<Refresh>((event, emit) async {
      await reponsitory.getPointHistory(1, LIMIT).then(
        (value) {
          emit(PointInitial((value.results ?? []), value.next != null));
          refreshController.refreshCompleted();
        },
      ).catchError((err) {
        refreshController.refreshFailed();
      });
    });
  }
}
