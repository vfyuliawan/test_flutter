// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_user_bloc.dart';

@immutable
abstract class LoginUserState {}

class LoginUserInitial extends LoginUserState {}

class LoginUserIsFailed extends LoginUserState {
  final String message;
  LoginUserIsFailed({
    required this.message,
  });
}

class LoginUserIsSuccess extends LoginUserState {
  final UserModel data;
  LoginUserIsSuccess({
    required this.data,
  });
}

class LoginUserIsLoading extends LoginUserState {}

class LoginUserIsLogout extends LoginUserState {}
