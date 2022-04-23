import 'package:wedo/data/models/user/user.dart';
import 'package:wedo/data/services/remote/remote.dart';

import 'auth_repository.dart';

class MainAuthRepository extends AuthRepository {
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
  Future<User> login(String username, String password) async {
    final user = await AuthenticationService().login(username, password);
    return User.fromJson(user.data);
  }
}
