part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class ChangeTab extends AppEvent {
  ChangeTab(this.index);
  final int index;
}
