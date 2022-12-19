part of 'utilities.dart';

class Commons {
  final prefs = SharedPreferences.getInstance();

  void setUid(String token) async {
    final storage = await prefs;
    await storage.setString("token", token);
  }

  Future<String> getUid() async {
    final storage = await prefs;
    return storage.getString("token")!;
  }

  Future<bool> removeUID() async {
    final storage = await prefs;
    return storage.remove("token");
  }

  void showSnackbarError(BuildContext context, String msg) {
    showTopSnackBar(context, CustomSnackBar.error(message: msg));
  }

  void showSnackbarInfo(BuildContext context, String msg) {
    showTopSnackBar(context, CustomSnackBar.info(message: msg));
  }
}
