part of 'search_product_bloc.dart';

@immutable
abstract class SearchProductState {}

class SearchProductInitial extends SearchProductState {}

class SearchProductIsLoading extends SearchProductState {}

class SearchProductIsSuccess extends SearchProductState {
  final ProductsGedget data;

  SearchProductIsSuccess(this.data);
}

class SearchProductIsFailed extends SearchProductState {
  final String message;

  SearchProductIsFailed(this.message);
}
