part of 'numberpicker_bloc.dart';

@immutable
abstract class NumberpickerState {
  final int amount;

  const NumberpickerState(this.amount);
}

class NumberpickerInitial extends NumberpickerState {
  const NumberpickerInitial(int amount) : super(amount);
}
