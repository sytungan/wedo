part of 'create_task_bloc.dart';

@immutable
abstract class CreateTaskState {
  final String date;

  const CreateTaskState(this.date);

}

class CreateTaskInitial extends CreateTaskState {
  const CreateTaskInitial(String date) : super(date);
}
