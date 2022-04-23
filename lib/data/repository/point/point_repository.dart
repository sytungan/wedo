import 'package:wedo/data/models/point/point_history.dart';
import 'package:wedo/data/services/remote/point/point_history.dart';

class PointHistoryRepo {
  Future<PointHistory> getPointHistory(int page, int limit) async {
    final pointHistory =
        await PointHistoryService().getPointHistory(page, limit);
    return PointHistory.fromJson(pointHistory.data);
  }
}
