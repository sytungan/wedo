import 'package:wedo/data/models/user/user.dart';

abstract class AuthRepository {
  Future<User> signIn();
  Future<User> register();
  Future<void> logOut();
}
