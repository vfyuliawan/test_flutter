part of 'services.dart';

class ProductServiceGedget {
  Future<BaseResponseData> fetchAllProduct() async {
    try {
      final response =
          await http.get(Uri.parse("https://dummyjson.com/products"));
      if (response.statusCode == 200) {
        return BaseResponseData(response.body, "Fetch berhasil");
      } else {
        return BaseResponseData(null, "Fetch Gagal");
      }
    } catch (e) {
      return BaseResponseData(null, e.toString());
    }
  }

  Future<BaseResponseData> fetchDetailProduct(int id) async {
    try {
      final response =
          await http.get(Uri.parse("https://dummyjson.com/products/${id}"));
      if (response.statusCode == 200) {
        return BaseResponseData(response.body, "Berhasil");
      } else {
        return BaseResponseData(null, "gagal");
      }
    } catch (e) {
      return BaseResponseData(null, e.toString());
    }
  }

  Future<BaseResponseData> searchWidget(String search) async {
    try {
      final response = await http
          .get(Uri.parse("https://dummyjson.com/products/search?q=$search"));
      if (response.statusCode == 200) {
        return BaseResponseData(response.body, "Berhasil");
      } else {
        return BaseResponseData(null, "gagal");
      }
    } catch (e) {
      return BaseResponseData(null, e.toString());
    }
  }
}
