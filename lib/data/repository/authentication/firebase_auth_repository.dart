import 'package:wedo/data/models/user/user.dart';

import 'auth_repository.dart';

class FirebaseAuthRepository extends AuthRepository {
  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<User> register() {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<User?> login(String username, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
