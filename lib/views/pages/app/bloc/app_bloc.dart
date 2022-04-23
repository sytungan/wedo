import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const HomeTab()) {
    on<ChangeTab>((event, emit) {
      switch (event.index) {
        case 0:
          emit(const HomeTab());
          break;
        case 1:
          emit(const UserTab());
          break;
        case 2:
          emit(const StoreTab());
          break;
      }
    });
  }
}
