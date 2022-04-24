part of 'home_bloc.dart';

@immutable
@immutable
abstract class HomeState {
  final Home home;

  const HomeState(this.home);
}

class HomeInitial extends HomeState {
  HomeInitial() : super(Home(store: [], activity: [], task: [], news: []));
}

class HomeLoading extends HomeState {
  HomeLoading() : super(Home(store: [], activity: [], task: [], news: []));
}

class HomeLoaded extends HomeState {
  const HomeLoaded(Home home) : super(home);
}

class HomeError extends HomeState {
  HomeError() : super(Home(store: [], activity: [], task: []));
}
