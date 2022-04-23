part of 'point_bloc.dart';

@immutable
abstract class PointState {
  final bool canLoadMore;
  final List<Transaction> data;

  const PointState(this.data, this.canLoadMore);
}

class PointInitial extends PointState {
  const PointInitial(List<Transaction> data, bool canLoadMore)
      : super(data, canLoadMore);
}
