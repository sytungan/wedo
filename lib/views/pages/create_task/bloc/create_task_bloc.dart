import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_task_event.dart';
part 'create_task_state.dart';

class CreateTaskBloc extends Bloc<CreateTaskEvent, CreateTaskState> {
  CreateTaskBloc() : super(CreateTaskInitial("")) {
    on<PickDate>((event, emit) {
      emit(CreateTaskInitial(event.date));
    });
  }
}
