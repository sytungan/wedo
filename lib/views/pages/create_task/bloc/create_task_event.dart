part of 'create_task_bloc.dart';

@immutable
abstract class CreateTaskEvent {}

class PickDate extends CreateTaskEvent{
  final String date;

  PickDate(this.date);
}