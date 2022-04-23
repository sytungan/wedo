import 'package:wedo/data/models/home/home.dart';
import 'package:wedo/data/services/remote/home/home_service.dart';

class HomeRepository {
  Future<Home> home() async {
    final home = await HomeService().home();
    return Home.fromJson(home.data);
  }
}
