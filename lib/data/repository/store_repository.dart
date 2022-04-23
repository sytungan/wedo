import 'package:wedo/data/services/remote/remote.dart';

import '../models/models.dart';

class StoreRepository{
  Future<Store> listProduct(String page, String limit) async{
    final store = await StoreService().listProduct(page, limit);
    return Store.fromJson(store.data);
  }
}