import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:wedo/data/models/models.dart';
import 'package:wedo/data/repository/point/point_repository.dart';

part 'point_event.dart';
part 'point_state.dart';

const LIMIT = 10;

class PointBloc extends Bloc<PointEvent, PointState> {
  PointBloc() : super(PointInitial([], true)) {
    final reponsitory = PointHistoryRepo();
    on<LoadMore>((event, emit) async {
      await reponsitory
          .getPointHistory(state.data.length ~/ LIMIT + 1, LIMIT)
          .then((value) => emit(PointInitial(
              state.data + (value.results ?? []), value.next != null)))
          .catchError((err) {});
    });
  }
}
