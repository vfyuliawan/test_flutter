import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/models.dart';
import '../../services/services.dart';

part 'product_gedget_detail_event.dart';
part 'product_gedget_detail_state.dart';

class ProductGedgetDetailBloc
    extends Bloc<ProductGedgetDetailEvent, ProductGedgetDetailState> {
  ProductGedgetDetailBloc() : super(ProductGedgetDetailInitial()) {
    on<FetchDetailGedget>((event, emit) async {
      emit(ProductGedgetDetailIsLoading());
      final result = await ProductServiceGedget().fetchDetailProduct(event.id);
      if (result.data != null) {
        final data = productsGedgetDetailFromJson(result.data);
        emit(ProductGedgetDetailIsSuccess(data));
      } else {
        emit(ProductGedgetDetailIsFailed(message: result.message));
      }
    });
  }
}
