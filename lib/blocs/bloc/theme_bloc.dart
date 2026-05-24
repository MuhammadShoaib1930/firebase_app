import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState()) {
    on<ChangeTheme>(_changeTheme);
  }

  FutureOr<void> _changeTheme(ChangeTheme event, Emitter<ThemeState> emit) {
    emit(ThemeState(isDark: state.isDark));
  }
}
