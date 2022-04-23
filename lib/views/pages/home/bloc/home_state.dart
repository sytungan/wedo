part of 'home_bloc.dart';

@immutable
@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final Home home;
  HomeLoaded({required this.home});
}

class HomeError extends HomeState {}
