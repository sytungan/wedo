import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:wedo/data/models/home/home.dart';
import 'package:wedo/data/repository/repository.dart';
import 'package:wedo/data/services/local/local.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RefreshController refreshController = RefreshController();
  HomeBloc() : super(HomeInitial()) {
    final repository = HomeRepository();
    on<HomeGet>((event, emit) async {
      await repository.home().then((value) {
        emit(HomeLoaded(value));
      }).catchError((err) {});
    });
    on<Refresh>((event, emit) async {
      await repository.adjustUser().then(
          (value) => LocalStorage.writeAsObject(LocalKeys.keyUser, value));
      await repository.home().then((value) {
        emit(HomeLoaded(value));
        refreshController.refreshCompleted();
      }).catchError((err) {
        refreshController.refreshFailed();
      });
    });
  }
}
