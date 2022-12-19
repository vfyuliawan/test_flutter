// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_user_bloc.dart';

@immutable
abstract class LoginUserEvent {}

class UserLogin extends LoginUserEvent {
  final String userName;
  final String password;
  UserLogin({
    required this.userName,
    required this.password,
  });
}

class UserLogout extends LoginUserEvent {}
