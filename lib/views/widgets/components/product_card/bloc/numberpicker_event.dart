part of 'numberpicker_bloc.dart';

@immutable
abstract class NumberpickerEvent {
}

class PickValue extends NumberpickerEvent{
  final int value;

  PickValue(this.value);
  
} 