part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class Unauthenticated extends LoginState {}

class AuthenticateLoading extends LoginState {}

class Authenticated extends LoginState {}

class ErrAuthenticated extends LoginState {
  final String msg;

  ErrAuthenticated(this.msg);
}
