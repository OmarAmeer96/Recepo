// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(T data) getUserProfileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(T data)? getUserProfileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(T data)? getUserProfileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(LoginError<T> value) error,
    required TResult Function(GetUserProfileSuccess<T> value)
        getUserProfileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(LoginError<T> value)? error,
    TResult? Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(LoginError<T> value)? error,
    TResult Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<T, $Res> {
  factory $LoginStateCopyWith(
          LoginState<T> value, $Res Function(LoginState<T>) then) =
      _$LoginStateCopyWithImpl<T, $Res, LoginState<T>>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<T, $Res, $Val extends LoginState<T>>
    implements $LoginStateCopyWith<T, $Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(T data) getUserProfileSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(T data)? getUserProfileSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(T data)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(LoginError<T> value) error,
    required TResult Function(GetUserProfileSuccess<T> value)
        getUserProfileSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(LoginError<T> value)? error,
    TResult? Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(LoginError<T> value)? error,
    TResult Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<T, $Res> {
  factory _$$LoginLoadingImplCopyWith(_$LoginLoadingImpl<T> value,
          $Res Function(_$LoginLoadingImpl<T>) then) =
      __$$LoginLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginLoadingImpl<T>>
    implements _$$LoginLoadingImplCopyWith<T, $Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl<T> _value, $Res Function(_$LoginLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl<T> implements LoginLoading<T> {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(T data) getUserProfileSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(T data)? getUserProfileSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(T data)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(LoginError<T> value) error,
    required TResult Function(GetUserProfileSuccess<T> value)
        getUserProfileSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(LoginError<T> value)? error,
    TResult? Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(LoginError<T> value)? error,
    TResult Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading<T> implements LoginState<T> {
  const factory LoginLoading() = _$LoginLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'LoginState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(T data) getUserProfileSuccess,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(T data)? getUserProfileSuccess,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(T data)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(LoginError<T> value) error,
    required TResult Function(GetUserProfileSuccess<T> value)
        getUserProfileSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(LoginError<T> value)? error,
    TResult? Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(LoginError<T> value)? error,
    TResult Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements LoginState<T> {
  const factory Success(final T data) = _$SuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<T, $Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl<T> value, $Res Function(_$LoginErrorImpl<T>) then) =
      __$$LoginErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginErrorImpl<T>>
    implements _$$LoginErrorImplCopyWith<T, $Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl<T> _value, $Res Function(_$LoginErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl<T> implements LoginError<T> {
  const _$LoginErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<T, _$LoginErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(T data) getUserProfileSuccess,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(T data)? getUserProfileSuccess,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(T data)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(LoginError<T> value) error,
    required TResult Function(GetUserProfileSuccess<T> value)
        getUserProfileSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(LoginError<T> value)? error,
    TResult? Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(LoginError<T> value)? error,
    TResult Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError<T> implements LoginState<T> {
  const factory LoginError({required final String error}) = _$LoginErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserProfileSuccessImplCopyWith<T, $Res> {
  factory _$$GetUserProfileSuccessImplCopyWith(
          _$GetUserProfileSuccessImpl<T> value,
          $Res Function(_$GetUserProfileSuccessImpl<T>) then) =
      __$$GetUserProfileSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$GetUserProfileSuccessImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$GetUserProfileSuccessImpl<T>>
    implements _$$GetUserProfileSuccessImplCopyWith<T, $Res> {
  __$$GetUserProfileSuccessImplCopyWithImpl(
      _$GetUserProfileSuccessImpl<T> _value,
      $Res Function(_$GetUserProfileSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetUserProfileSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GetUserProfileSuccessImpl<T> implements GetUserProfileSuccess<T> {
  const _$GetUserProfileSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'LoginState<$T>.getUserProfileSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserProfileSuccessImplCopyWith<T, _$GetUserProfileSuccessImpl<T>>
      get copyWith => __$$GetUserProfileSuccessImplCopyWithImpl<T,
          _$GetUserProfileSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
    required TResult Function(T data) getUserProfileSuccess,
  }) {
    return getUserProfileSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
    TResult? Function(T data)? getUserProfileSuccess,
  }) {
    return getUserProfileSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    TResult Function(T data)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (getUserProfileSuccess != null) {
      return getUserProfileSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(LoginError<T> value) error,
    required TResult Function(GetUserProfileSuccess<T> value)
        getUserProfileSuccess,
  }) {
    return getUserProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(LoginError<T> value)? error,
    TResult? Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
  }) {
    return getUserProfileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(LoginError<T> value)? error,
    TResult Function(GetUserProfileSuccess<T> value)? getUserProfileSuccess,
    required TResult orElse(),
  }) {
    if (getUserProfileSuccess != null) {
      return getUserProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class GetUserProfileSuccess<T> implements LoginState<T> {
  const factory GetUserProfileSuccess(final T data) =
      _$GetUserProfileSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$GetUserProfileSuccessImplCopyWith<T, _$GetUserProfileSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
