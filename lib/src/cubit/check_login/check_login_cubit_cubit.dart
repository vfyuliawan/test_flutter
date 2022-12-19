import 'package:belajar_flutter/src/services/services.dart';
import 'package:belajar_flutter/src/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'check_login_cubit_state.dart';

class CheckLoginCubit extends Cubit<CheckLoginCubitState> {
  CheckLoginCubit() : super(CheckLoginCubitInitial());

  void checkLogin() async {
    final result = await Commons().getUid();
    if (result.isNotEmpty) {
      emit(CheckLoginIsSuccess());
    } else {
      emit(CheckLoginIsFailed("gagal"));
    }
  }

  void logout() async {
    Commons().removeUID();
    final result = await UserService().logout();
    if (result.data == null) {
      emit(CheckLoginIsLoggedOut());
    } else {
      emit(CheckLoginIsSuccess());
    }
  }
}
