part of 'app_bloc.dart';

@immutable
abstract class AppState {
  const AppState(this.tabIndex);
  final int tabIndex;
}

class HomeTab extends AppState {
  const HomeTab() : super(0);
}

class UserTab extends AppState {
  const UserTab() : super(1);
}

class StoreTab extends AppState {
  const StoreTab() : super(2);
}
