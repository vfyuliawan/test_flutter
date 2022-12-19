part of 'product_gedget_detail_bloc.dart';

@immutable
abstract class ProductGedgetDetailEvent {}

class FetchDetailGedget extends ProductGedgetDetailEvent {
  final int id;

  FetchDetailGedget(this.id);
}
