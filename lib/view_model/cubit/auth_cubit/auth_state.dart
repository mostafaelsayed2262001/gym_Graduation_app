part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class AuthVisiable extends AuthState {}

class AuthReset extends AuthState {}
class AuthLogin extends AuthState {}
class AuthRegist extends AuthState {}
class AuthVerify extends AuthState {}
class AuthForget extends AuthState {}
class AuthError extends AuthState {}
class AuthLoader extends AuthState {}
class AuthDataShowed extends AuthState {}
class AuthMaleGender extends AuthState {}
class AuthFemaleGender extends AuthState {}
