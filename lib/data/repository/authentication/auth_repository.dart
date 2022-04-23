import 'package:wedo/data/models/user/user.dart';

abstract class AuthRepository {
  Future<User?> login(String username, String password);
  Future<User> register();
  Future<void> logOut();
}
