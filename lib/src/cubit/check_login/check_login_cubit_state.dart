part of 'check_login_cubit_cubit.dart';

@immutable
abstract class CheckLoginCubitState {}

class CheckLoginCubitInitial extends CheckLoginCubitState {}

class CheckLoginIsLoading extends CheckLoginCubitState {}

class CheckLoginIsSuccess extends CheckLoginCubitState {}

class CheckLoginIsLoggedOut extends CheckLoginCubitState {}

class CheckLoginIsFailed extends CheckLoginCubitState {
  final String message;

  CheckLoginIsFailed(this.message);
}
