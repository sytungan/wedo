import 'package:wedo/data/models/home/home.dart';
import 'package:wedo/data/models/user/user.dart';
import 'package:wedo/data/services/local/local.dart';
import 'package:wedo/data/services/local/local_storage.dart';
import 'package:wedo/data/services/remote/home/home_service.dart';

class HomeRepository {
  Future<Home> home() async {
    final home = await HomeService().home();
    return Home.fromJson(home.data);
  }

  Future<User> adjustUser() async {
    final userData = await LocalStorage.loadToObject(LocalKeys.keyUser);
    final token = User.fromJson(userData!).token;
    final newUserData = await HomeService().updateUser();
    return User.fromJson(newUserData.data)..token = token;
  }
}
