part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.success({
    @Default(true) bool isObscure,
    @Default(false) bool siginPage,
    @Default(false) isForget,
  }) = _Success;
  const factory AuthState.error({required String error}) = _Error;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loginPage() = _LoginPage;
}
