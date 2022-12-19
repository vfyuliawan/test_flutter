import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/models.dart';
import '../../services/services.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  SearchProductBloc() : super(SearchProductInitial()) {
    on<ProductSearch>((event, emit) async {
      emit(SearchProductIsLoading());
      final result = await ProductServiceGedget().searchWidget(event.search);
      if (result.data != null) {
        final data = productsGedgetFromJson(result.data);
        emit(SearchProductIsSuccess(data));
      } else {
        emit(SearchProductIsFailed(result.message));
      }
    });
  }
}
