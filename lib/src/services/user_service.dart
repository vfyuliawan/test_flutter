part of 'services.dart';

class UserService {
  //inisialisasi Shared Preferance
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  // void loginWithEmail({String? userName, String? password}) async {
  //   Uri url = Uri.parse("https://dummyjson.com/auth/login");
  //   final response = await http.post(
  //     url,
  //     headers: <String, String>{'Content-Type': 'application/json'},
  //     body: json.encode(
  //       {"username": "kminchelle", "password": "0lelplR"},
  //     ),
  //   );
  //   print(json.decode(response.body));
  // }

  Future<BaseResponseData> loginUser(
      {String? userName, String? password}) async {
    try {
      final response = await http.post(
        Uri.parse("https://dummyjson.com/auth/login"),
        body: json.encode(
          {"username": userName, "password": password},
        ),
        headers: <String, String>{'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        print("berhasil");
        return BaseResponseData(response.body, "Berhasil login");
      } else {
        print("gagal");

        return BaseResponseData(null, "Incorrect UserName or Password");
      }
    } catch (e) {
      return BaseResponseData(null, e.toString());
    }
  }

  //buat fungsi check login user preferance
  Future<BaseResponseData> checkLogin() async {
    final storage = await prefs;
    if (storage.getBool(pernahLogin) == true) {
      return BaseResponseData(true, 'Berhasil');
    } else {
      return BaseResponseData(null, 'Token_Kadaluarsa');
    }
  }

  //fungsi Logout
  Future<BaseResponseData> logout() async {
    final storage = await prefs;
    if (storage.getBool(pernahLogin) == true) {
      storage.clear();
      return BaseResponseData(null, 'Berhasil Logout');
    } else {
      return BaseResponseData(true, 'Masih Login');
    }
  }
}
