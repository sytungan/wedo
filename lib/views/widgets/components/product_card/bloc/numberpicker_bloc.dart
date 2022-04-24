import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'numberpicker_event.dart';
part 'numberpicker_state.dart';

class NumberpickerBloc extends Bloc<NumberpickerEvent, NumberpickerState> {
  NumberpickerBloc() : super(NumberpickerInitial(0)) {
    on<PickValue>((event, emit) {
      emit(NumberpickerInitial(event.value));
      
    });
  }
}
