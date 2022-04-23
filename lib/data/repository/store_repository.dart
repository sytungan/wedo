import 'package:wedo/data/services/remote/store.dart';

import '../models/models.dart';

class StoreRepository {
  Future<Store> listProduct(int page, int limit) async {
    final store = await StoreService().listProduct(page, limit);
    return Store.fromJson(store.data);
  }
}
