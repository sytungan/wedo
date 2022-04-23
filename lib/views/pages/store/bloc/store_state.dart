part of 'store_bloc.dart';

@immutable
abstract class StoreState {
  final List<Product> listProduct;
  final bool canLoadMore;

  const StoreState(this.listProduct, this.canLoadMore);
}

class StoreInitial extends StoreState {
  const StoreInitial(List<Product> listProduct, bool canLoadMore)
      : super(listProduct, canLoadMore);
}
