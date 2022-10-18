import 'package:belajar_flutter/src/bloc/blocs.dart';
import 'package:belajar_flutter/src/models/models.dart';
import 'package:belajar_flutter/src/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<FetchProductAPI>((event, emit) async {
      emit(ProductIsLoading());

      //fungsi get data
      final result = await ProductService().fetchDetailProduct();
      if (result.data != null) {
        final data = productModelFromJson(result.data);
        //kalau berhasil
        emit(ProductIsSuccess(data));
      } else {
        // kalau gagal
        emit(ProductIsFailed(result.message));
      }
    });
  }
}
