part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginPress extends LoginEvent {
  final String username;
  final String password;

  LoginPress(this.username, this.password);
}

class LoginFromLocal extends LoginEvent {}

class LogoutPress extends LoginEvent {}
