import 'package:belajar_flutter/src/models/models.dart';
import 'package:belajar_flutter/src/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'product_gedget_event.dart';
part 'product_gedget_state.dart';

class ProductGedgetBloc extends Bloc<ProductGedgetEvent, ProductGedgetState> {
  ProductGedgetBloc() : super(ProductGedgetInitial()) {
    on<FetchProductGedget>((event, emit) async {
      emit(ProductGedgetIsLoading());
      final result = await ProductServiceGedget().fetchAllProduct();
      if (result.data != null) {
        final data = productsGedgetFromJson(result.data);
        emit(ProductGedgetIsSuccess(data));
      } else {
        emit(ProductGedgetIsFailed(message: result.message));
      }
    });
  }
}
