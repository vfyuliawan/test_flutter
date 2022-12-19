part of 'search_product_bloc.dart';

@immutable
abstract class SearchProductEvent {}

class ProductSearch extends SearchProductEvent {
  final String search;

  ProductSearch(this.search);
}
