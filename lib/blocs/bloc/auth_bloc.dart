import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth instance = FirebaseAuth.instance;
  AuthBloc() : super(AuthState.success()) {
    on<_SinginPage>(_singinPage);
    on<_HideText>(_hideText);
    on<_Login>(_login);
    on<_Signin>(_signin);
    on<_ForgetPage>(_forgepage);
    on<_ForgetPassword>(_forgetPassword);
  }

  FutureOr<void> _singinPage(_SinginPage event, Emitter<AuthState> emit) {
    if (state is _Success) {
      emit((state as _Success).copyWith(siginPage: event.isSingpage));
    }
  }

  FutureOr<void> _hideText(_HideText event, Emitter<AuthState> emit) {
    if (state is _Success) {
      emit((state as _Success).copyWith(isObscure: event.isObscure));
    }
  }

  FutureOr<void> _login(_Login event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await instance.signInWithEmailAndPassword(email: event.email, password: event.password).then((
        value,
      ) {
        emit(AuthState.loginPage());
        return;
      });
    } on FirebaseAuthException catch (e) {
      emit(AuthState.error(error:" ${e.message} ${e.code}"));
      await Future.delayed(Duration(seconds: 10));
      emit(AuthState.success(siginPage: false));
    }
  }

  FutureOr<void> _signin(_Signin event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    if (event.password != event.confromPassword) {
      emit(
        AuthState.error(
          error:
              "The both,\n password and confromPassword should be same!\n(${event.password}) and (${event.confromPassword}) should be match!",
        ),
      );
      await Future.delayed(Duration(seconds: 5));
    } else {
      try {
        await instance.createUserWithEmailAndPassword(email: event.email, password: event.password);
      } on FirebaseAuthException catch (e) {
        log(e.toString());
        emit(AuthState.error(error: e.message.toString()));
      }
    }
    emit(AuthState.success(siginPage: false));
  }

  FutureOr<void> _forgepage(_ForgetPage event, Emitter<AuthState> emit) {
    if (state is _Success) {
      emit((state as _Success).copyWith(isForget: event.isForget));
    }
  }

  FutureOr<void> _forgetPassword(_ForgetPassword event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    await FirebaseAuth.instance.sendPasswordResetEmail(email: event.email);
    emit(AuthState.success(siginPage: true));
  }
}
