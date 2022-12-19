// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_gedget_detail_bloc.dart';

@immutable
abstract class ProductGedgetDetailState {}

class ProductGedgetDetailInitial extends ProductGedgetDetailState {}

class ProductGedgetDetailIsSuccess extends ProductGedgetDetailState {
  final ProductsGedgetDetail data;
  ProductGedgetDetailIsSuccess(this.data);
}

class ProductGedgetDetailIsFailed extends ProductGedgetDetailState {
  final String message;
  ProductGedgetDetailIsFailed({
    required this.message,
  });
}

class ProductGedgetDetailIsLoading extends ProductGedgetDetailState {}
