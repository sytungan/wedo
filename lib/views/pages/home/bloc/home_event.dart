part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeGet extends HomeEvent {}

class Refresh extends HomeEvent {}
