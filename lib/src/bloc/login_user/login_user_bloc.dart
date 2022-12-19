import 'package:belajar_flutter/src/services/services.dart';
import 'package:belajar_flutter/src/utilities/utilities.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/models.dart';

part 'login_user_event.dart';
part 'login_user_state.dart';

class LoginUserBloc extends Bloc<LoginUserEvent, LoginUserState> {
  LoginUserBloc() : super(LoginUserInitial()) {
    on<UserLogin>(
      (event, emit) async {
        emit(LoginUserIsLoading());
        final result = await UserService()
            .loginUser(userName: event.userName, password: event.password);
        if (result.data != null) {
          final data = userModelFromJson(result.data);
          Commons().setUid(data.token!);
          emit(LoginUserIsSuccess(data: data));
        } else {
          emit(LoginUserIsFailed(message: result.message));
        }
      },
    );
    on<UserLogout>(
      (event, emit) async {
        await Commons().removeUID();
        emit(LoginUserIsLogout());
      },
    );
  }
}
