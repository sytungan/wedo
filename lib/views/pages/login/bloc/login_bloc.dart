import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wedo/data/repository/repository.dart';
import 'package:wedo/data/services/local/local.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final bool authenticated;
  LoginBloc(this.authenticated)
      : super(authenticated ? Authenticated() : Unauthenticated()) {
    final repository = MainAuthRepository();
    on<LoginPress>((event, emit) async {
      emit(AuthenticateLoading());
      await repository.login(event.username, event.password).then((user) {
        LocalStorage.writeAsObject(LocalKeys.keyUser, user.toJson());
        emit(Authenticated());
      }).catchError((err) {
        emit(ErrAuthenticated(err.toString()));
      });
    });
    on<LoginFromLocal>((event, emit) => emit(Authenticated()));
    on<LogoutPress>(((event, emit) async {
      await LocalStorage.writeAsObject(LocalKeys.keyUser, null);
      emit(Unauthenticated());
    }));
  }
}
