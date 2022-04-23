part of 'point_bloc.dart';

@immutable
abstract class PointEvent {}

class LoadMore extends PointEvent {}

class Refresh extends PointEvent {}
