import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wedo/data/models/home/home.dart';
import 'package:wedo/data/repository/repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    final repository = HomeRepository();
    on<HomeGet>((event, emit) async {
      await repository
          .home()
          .then((value) => print(HomeBloc()))
          .catchError((err) {});
    });
  }
}
