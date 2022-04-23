import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wedo/data/repository/repository.dart';
import 'package:wedo/data/services/local/local.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(Unauthenticated()) {
    final repository = MainAuthRepository();
    on<LoginPress>((event, emit) async {
      emit(AuthenticateLoading());
      await repository.login(event.username, event.password).catchError((err) {
        emit(ErrAuthenticated(err.toString()));
      }).then((user) {
        LocalStorage.writeAsObject(LocalKeys.keyUser, user?.toJson());
        emit(Authenticated());
      });
    });
  }
}
