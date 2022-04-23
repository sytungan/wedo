import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wedo/data/models/models.dart';
import 'package:wedo/data/repository/store_repository.dart';

part 'store_event.dart';
part 'store_state.dart';

const LIMIT = 10;

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  final RefreshController refreshController = RefreshController();
  StoreBloc() : super(StoreInitial([], true)) {
    final reponsitory = StoreRepository();
    on<LoadMore>((event, emit) async {
      await reponsitory
          .listProduct(state.listProduct.length ~/ LIMIT + 1, LIMIT)
          .then(
        (value) {
          emit(StoreInitial(
              state.listProduct + (value.results ?? []), value.next != null));
          refreshController.loadComplete();
        },
      ).catchError((err) {
        refreshController.loadFailed();
      });
    });

    on<Refresh>((event, emit) async {
      await reponsitory.listProduct(1, LIMIT).then(
        (value) {
          emit(StoreInitial((value.results ?? []), value.next != null));
          refreshController.refreshCompleted();
        },
      ).catchError((err) {
        refreshController.refreshFailed();
      });
    });
  }
}
