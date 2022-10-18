part of 'services.dart';

class ProductService {
  Future<BaseResponseData> fetchDetailProduct() async {
    try {
      final response = await http.get(Uri.parse(baseUrl + "products"));
      if (response.statusCode == 200) {
        return BaseResponseData(response.body, "Berhasil");
      } else {
        return BaseResponseData(null, "Gagal");
      }
    } catch (e) {
      return BaseResponseData(null, e.toString());
    }
  }
}
