part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.singinPage({required bool isSingpage}) = _SinginPage;
  const factory AuthEvent.hideText({required bool isObscure}) = _HideText;
  const factory AuthEvent.login({required String email, required String password}) = _Login;
  const factory AuthEvent.signin({
    required String email,
    required String password,
    required String confromPassword,
  }) = _Signin;
  const factory AuthEvent.forgetPassword({required String email}) = _ForgetPassword;
  const factory AuthEvent.forgetPage({required bool isForget}) = _ForgetPage;
}
