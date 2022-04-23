part of 'store_bloc.dart';

@immutable
abstract class StoreEvent {}

class LoadMore extends StoreEvent {}

class Refresh extends StoreEvent {}
