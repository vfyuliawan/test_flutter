// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_gedget_bloc.dart';

@immutable
abstract class ProductGedgetState {}

class ProductGedgetInitial extends ProductGedgetState {}

class ProductGedgetIsLoading extends ProductGedgetState {}

class ProductGedgetIsSuccess extends ProductGedgetState {
  final ProductsGedget data;
  ProductGedgetIsSuccess(
    this.data,
  );
}

class ProductGedgetIsFailed extends ProductGedgetState {
  final String message;
  ProductGedgetIsFailed({
    required this.message,
  });
}
