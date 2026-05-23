// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SinginPage value)?  singinPage,TResult Function( _HideText value)?  hideText,TResult Function( _Login value)?  login,TResult Function( _Signin value)?  signin,TResult Function( _ForgetPassword value)?  forgetPassword,TResult Function( _ForgetPage value)?  forgetPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SinginPage() when singinPage != null:
return singinPage(_that);case _HideText() when hideText != null:
return hideText(_that);case _Login() when login != null:
return login(_that);case _Signin() when signin != null:
return signin(_that);case _ForgetPassword() when forgetPassword != null:
return forgetPassword(_that);case _ForgetPage() when forgetPage != null:
return forgetPage(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SinginPage value)  singinPage,required TResult Function( _HideText value)  hideText,required TResult Function( _Login value)  login,required TResult Function( _Signin value)  signin,required TResult Function( _ForgetPassword value)  forgetPassword,required TResult Function( _ForgetPage value)  forgetPage,}){
final _that = this;
switch (_that) {
case _SinginPage():
return singinPage(_that);case _HideText():
return hideText(_that);case _Login():
return login(_that);case _Signin():
return signin(_that);case _ForgetPassword():
return forgetPassword(_that);case _ForgetPage():
return forgetPage(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SinginPage value)?  singinPage,TResult? Function( _HideText value)?  hideText,TResult? Function( _Login value)?  login,TResult? Function( _Signin value)?  signin,TResult? Function( _ForgetPassword value)?  forgetPassword,TResult? Function( _ForgetPage value)?  forgetPage,}){
final _that = this;
switch (_that) {
case _SinginPage() when singinPage != null:
return singinPage(_that);case _HideText() when hideText != null:
return hideText(_that);case _Login() when login != null:
return login(_that);case _Signin() when signin != null:
return signin(_that);case _ForgetPassword() when forgetPassword != null:
return forgetPassword(_that);case _ForgetPage() when forgetPage != null:
return forgetPage(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isSingpage)?  singinPage,TResult Function( bool isObscure)?  hideText,TResult Function( String email,  String password)?  login,TResult Function( String email,  String password,  String confromPassword)?  signin,TResult Function( String email)?  forgetPassword,TResult Function( bool isForget)?  forgetPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SinginPage() when singinPage != null:
return singinPage(_that.isSingpage);case _HideText() when hideText != null:
return hideText(_that.isObscure);case _Login() when login != null:
return login(_that.email,_that.password);case _Signin() when signin != null:
return signin(_that.email,_that.password,_that.confromPassword);case _ForgetPassword() when forgetPassword != null:
return forgetPassword(_that.email);case _ForgetPage() when forgetPage != null:
return forgetPage(_that.isForget);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isSingpage)  singinPage,required TResult Function( bool isObscure)  hideText,required TResult Function( String email,  String password)  login,required TResult Function( String email,  String password,  String confromPassword)  signin,required TResult Function( String email)  forgetPassword,required TResult Function( bool isForget)  forgetPage,}) {final _that = this;
switch (_that) {
case _SinginPage():
return singinPage(_that.isSingpage);case _HideText():
return hideText(_that.isObscure);case _Login():
return login(_that.email,_that.password);case _Signin():
return signin(_that.email,_that.password,_that.confromPassword);case _ForgetPassword():
return forgetPassword(_that.email);case _ForgetPage():
return forgetPage(_that.isForget);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isSingpage)?  singinPage,TResult? Function( bool isObscure)?  hideText,TResult? Function( String email,  String password)?  login,TResult? Function( String email,  String password,  String confromPassword)?  signin,TResult? Function( String email)?  forgetPassword,TResult? Function( bool isForget)?  forgetPage,}) {final _that = this;
switch (_that) {
case _SinginPage() when singinPage != null:
return singinPage(_that.isSingpage);case _HideText() when hideText != null:
return hideText(_that.isObscure);case _Login() when login != null:
return login(_that.email,_that.password);case _Signin() when signin != null:
return signin(_that.email,_that.password,_that.confromPassword);case _ForgetPassword() when forgetPassword != null:
return forgetPassword(_that.email);case _ForgetPage() when forgetPage != null:
return forgetPage(_that.isForget);case _:
  return null;

}
}

}

/// @nodoc


class _SinginPage implements AuthEvent {
  const _SinginPage({required this.isSingpage});
  

 final  bool isSingpage;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SinginPageCopyWith<_SinginPage> get copyWith => __$SinginPageCopyWithImpl<_SinginPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SinginPage&&(identical(other.isSingpage, isSingpage) || other.isSingpage == isSingpage));
}


@override
int get hashCode => Object.hash(runtimeType,isSingpage);

@override
String toString() {
  return 'AuthEvent.singinPage(isSingpage: $isSingpage)';
}


}

/// @nodoc
abstract mixin class _$SinginPageCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SinginPageCopyWith(_SinginPage value, $Res Function(_SinginPage) _then) = __$SinginPageCopyWithImpl;
@useResult
$Res call({
 bool isSingpage
});




}
/// @nodoc
class __$SinginPageCopyWithImpl<$Res>
    implements _$SinginPageCopyWith<$Res> {
  __$SinginPageCopyWithImpl(this._self, this._then);

  final _SinginPage _self;
  final $Res Function(_SinginPage) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isSingpage = null,}) {
  return _then(_SinginPage(
isSingpage: null == isSingpage ? _self.isSingpage : isSingpage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _HideText implements AuthEvent {
  const _HideText({required this.isObscure});
  

 final  bool isObscure;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HideTextCopyWith<_HideText> get copyWith => __$HideTextCopyWithImpl<_HideText>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HideText&&(identical(other.isObscure, isObscure) || other.isObscure == isObscure));
}


@override
int get hashCode => Object.hash(runtimeType,isObscure);

@override
String toString() {
  return 'AuthEvent.hideText(isObscure: $isObscure)';
}


}

/// @nodoc
abstract mixin class _$HideTextCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$HideTextCopyWith(_HideText value, $Res Function(_HideText) _then) = __$HideTextCopyWithImpl;
@useResult
$Res call({
 bool isObscure
});




}
/// @nodoc
class __$HideTextCopyWithImpl<$Res>
    implements _$HideTextCopyWith<$Res> {
  __$HideTextCopyWithImpl(this._self, this._then);

  final _HideText _self;
  final $Res Function(_HideText) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isObscure = null,}) {
  return _then(_HideText(
isObscure: null == isObscure ? _self.isObscure : isObscure // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Login implements AuthEvent {
  const _Login({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCopyWith<_Login> get copyWith => __$LoginCopyWithImpl<_Login>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Login&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) _then) = __$LoginCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(this._self, this._then);

  final _Login _self;
  final $Res Function(_Login) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_Login(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Signin implements AuthEvent {
  const _Signin({required this.email, required this.password, required this.confromPassword});
  

 final  String email;
 final  String password;
 final  String confromPassword;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SigninCopyWith<_Signin> get copyWith => __$SigninCopyWithImpl<_Signin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Signin&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confromPassword, confromPassword) || other.confromPassword == confromPassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,confromPassword);

@override
String toString() {
  return 'AuthEvent.signin(email: $email, password: $password, confromPassword: $confromPassword)';
}


}

/// @nodoc
abstract mixin class _$SigninCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SigninCopyWith(_Signin value, $Res Function(_Signin) _then) = __$SigninCopyWithImpl;
@useResult
$Res call({
 String email, String password, String confromPassword
});




}
/// @nodoc
class __$SigninCopyWithImpl<$Res>
    implements _$SigninCopyWith<$Res> {
  __$SigninCopyWithImpl(this._self, this._then);

  final _Signin _self;
  final $Res Function(_Signin) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? confromPassword = null,}) {
  return _then(_Signin(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confromPassword: null == confromPassword ? _self.confromPassword : confromPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ForgetPassword implements AuthEvent {
  const _ForgetPassword({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetPasswordCopyWith<_ForgetPassword> get copyWith => __$ForgetPasswordCopyWithImpl<_ForgetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetPassword&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.forgetPassword(email: $email)';
}


}

/// @nodoc
abstract mixin class _$ForgetPasswordCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ForgetPasswordCopyWith(_ForgetPassword value, $Res Function(_ForgetPassword) _then) = __$ForgetPasswordCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$ForgetPasswordCopyWithImpl<$Res>
    implements _$ForgetPasswordCopyWith<$Res> {
  __$ForgetPasswordCopyWithImpl(this._self, this._then);

  final _ForgetPassword _self;
  final $Res Function(_ForgetPassword) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_ForgetPassword(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ForgetPage implements AuthEvent {
  const _ForgetPage({required this.isForget});
  

 final  bool isForget;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetPageCopyWith<_ForgetPage> get copyWith => __$ForgetPageCopyWithImpl<_ForgetPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetPage&&(identical(other.isForget, isForget) || other.isForget == isForget));
}


@override
int get hashCode => Object.hash(runtimeType,isForget);

@override
String toString() {
  return 'AuthEvent.forgetPage(isForget: $isForget)';
}


}

/// @nodoc
abstract mixin class _$ForgetPageCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ForgetPageCopyWith(_ForgetPage value, $Res Function(_ForgetPage) _then) = __$ForgetPageCopyWithImpl;
@useResult
$Res call({
 bool isForget
});




}
/// @nodoc
class __$ForgetPageCopyWithImpl<$Res>
    implements _$ForgetPageCopyWith<$Res> {
  __$ForgetPageCopyWithImpl(this._self, this._then);

  final _ForgetPage _self;
  final $Res Function(_ForgetPage) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isForget = null,}) {
  return _then(_ForgetPage(
isForget: null == isForget ? _self.isForget : isForget // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,TResult Function( _Loading value)?  loading,TResult Function( _Initial value)?  initial,TResult Function( _LoginPage value)?  loginPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _Loading() when loading != null:
return loading(_that);case _Initial() when initial != null:
return initial(_that);case _LoginPage() when loginPage != null:
return loginPage(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,required TResult Function( _Loading value)  loading,required TResult Function( _Initial value)  initial,required TResult Function( _LoginPage value)  loginPage,}){
final _that = this;
switch (_that) {
case _Success():
return success(_that);case _Error():
return error(_that);case _Loading():
return loading(_that);case _Initial():
return initial(_that);case _LoginPage():
return loginPage(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,TResult? Function( _Loading value)?  loading,TResult? Function( _Initial value)?  initial,TResult? Function( _LoginPage value)?  loginPage,}){
final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _Loading() when loading != null:
return loading(_that);case _Initial() when initial != null:
return initial(_that);case _LoginPage() when loginPage != null:
return loginPage(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isObscure,  bool siginPage,  dynamic isForget)?  success,TResult Function( String error)?  error,TResult Function()?  loading,TResult Function()?  initial,TResult Function()?  loginPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that.isObscure,_that.siginPage,_that.isForget);case _Error() when error != null:
return error(_that.error);case _Loading() when loading != null:
return loading();case _Initial() when initial != null:
return initial();case _LoginPage() when loginPage != null:
return loginPage();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isObscure,  bool siginPage,  dynamic isForget)  success,required TResult Function( String error)  error,required TResult Function()  loading,required TResult Function()  initial,required TResult Function()  loginPage,}) {final _that = this;
switch (_that) {
case _Success():
return success(_that.isObscure,_that.siginPage,_that.isForget);case _Error():
return error(_that.error);case _Loading():
return loading();case _Initial():
return initial();case _LoginPage():
return loginPage();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isObscure,  bool siginPage,  dynamic isForget)?  success,TResult? Function( String error)?  error,TResult? Function()?  loading,TResult? Function()?  initial,TResult? Function()?  loginPage,}) {final _that = this;
switch (_that) {
case _Success() when success != null:
return success(_that.isObscure,_that.siginPage,_that.isForget);case _Error() when error != null:
return error(_that.error);case _Loading() when loading != null:
return loading();case _Initial() when initial != null:
return initial();case _LoginPage() when loginPage != null:
return loginPage();case _:
  return null;

}
}

}

/// @nodoc


class _Success implements AuthState {
  const _Success({this.isObscure = true, this.siginPage = false, this.isForget = false});
  

@JsonKey() final  bool isObscure;
@JsonKey() final  bool siginPage;
@JsonKey() final  dynamic isForget;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.isObscure, isObscure) || other.isObscure == isObscure)&&(identical(other.siginPage, siginPage) || other.siginPage == siginPage)&&const DeepCollectionEquality().equals(other.isForget, isForget));
}


@override
int get hashCode => Object.hash(runtimeType,isObscure,siginPage,const DeepCollectionEquality().hash(isForget));

@override
String toString() {
  return 'AuthState.success(isObscure: $isObscure, siginPage: $siginPage, isForget: $isForget)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 bool isObscure, bool siginPage, dynamic isForget
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isObscure = null,Object? siginPage = null,Object? isForget = freezed,}) {
  return _then(_Success(
isObscure: null == isObscure ? _self.isObscure : isObscure // ignore: cast_nullable_to_non_nullable
as bool,siginPage: null == siginPage ? _self.siginPage : siginPage // ignore: cast_nullable_to_non_nullable
as bool,isForget: freezed == isForget ? _self.isForget : isForget // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class _Error implements AuthState {
  const _Error({required this.error});
  

 final  String error;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AuthState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Loading implements AuthState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class _LoginPage implements AuthState {
  const _LoginPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loginPage()';
}


}




// dart format on
