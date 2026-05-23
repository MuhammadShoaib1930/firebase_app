part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final bool isDark;
  const ThemeState({this.isDark = false});
  @override
  List<Object?> get props => [isDark];
}
