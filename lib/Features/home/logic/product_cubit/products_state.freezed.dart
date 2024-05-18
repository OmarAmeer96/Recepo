// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<T, $Res> {
  factory $ProductsStateCopyWith(
          ProductsState<T> value, $Res Function(ProductsState<T>) then) =
      _$ProductsStateCopyWithImpl<T, $Res, ProductsState<T>>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<T, $Res, $Val extends ProductsState<T>>
    implements $ProductsStateCopyWith<T, $Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductsState<$T>.initial()';
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
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements ProductsState<T> {
  const factory Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements ProductsState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$ProductsFetchedImplCopyWith<T, $Res> {
  factory _$$ProductsFetchedImplCopyWith(_$ProductsFetchedImpl<T> value,
          $Res Function(_$ProductsFetchedImpl<T>) then) =
      __$$ProductsFetchedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ProductsFetchedImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsFetchedImpl<T>>
    implements _$$ProductsFetchedImplCopyWith<T, $Res> {
  __$$ProductsFetchedImplCopyWithImpl(_$ProductsFetchedImpl<T> _value,
      $Res Function(_$ProductsFetchedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductsFetchedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ProductsFetchedImpl<T> implements ProductsFetched<T> {
  const _$ProductsFetchedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ProductsState<$T>.productsFetched(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFetchedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFetchedImplCopyWith<T, _$ProductsFetchedImpl<T>> get copyWith =>
      __$$ProductsFetchedImplCopyWithImpl<T, _$ProductsFetchedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) {
    return productsFetched(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) {
    return productsFetched?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (productsFetched != null) {
      return productsFetched(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) {
    return productsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) {
    return productsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (productsFetched != null) {
      return productsFetched(this);
    }
    return orElse();
  }
}

abstract class ProductsFetched<T> implements ProductsState<T> {
  const factory ProductsFetched(final T data) = _$ProductsFetchedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ProductsFetchedImplCopyWith<T, _$ProductsFetchedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAddImplCopyWith<T, $Res> {
  factory _$$SuccessAddImplCopyWith(
          _$SuccessAddImpl<T> value, $Res Function(_$SuccessAddImpl<T>) then) =
      __$$SuccessAddImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessAddImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$SuccessAddImpl<T>>
    implements _$$SuccessAddImplCopyWith<T, $Res> {
  __$$SuccessAddImplCopyWithImpl(
      _$SuccessAddImpl<T> _value, $Res Function(_$SuccessAddImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessAddImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessAddImpl<T> implements SuccessAdd<T> {
  const _$SuccessAddImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ProductsState<$T>.successAdd(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAddImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAddImplCopyWith<T, _$SuccessAddImpl<T>> get copyWith =>
      __$$SuccessAddImplCopyWithImpl<T, _$SuccessAddImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) {
    return successAdd(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) {
    return successAdd?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (successAdd != null) {
      return successAdd(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) {
    return successAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) {
    return successAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (successAdd != null) {
      return successAdd(this);
    }
    return orElse();
  }
}

abstract class SuccessAdd<T> implements ProductsState<T> {
  const factory SuccessAdd(final T data) = _$SuccessAddImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessAddImplCopyWith<T, _$SuccessAddImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessUpdateImplCopyWith<T, $Res> {
  factory _$$SuccessUpdateImplCopyWith(_$SuccessUpdateImpl<T> value,
          $Res Function(_$SuccessUpdateImpl<T>) then) =
      __$$SuccessUpdateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessUpdateImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$SuccessUpdateImpl<T>>
    implements _$$SuccessUpdateImplCopyWith<T, $Res> {
  __$$SuccessUpdateImplCopyWithImpl(_$SuccessUpdateImpl<T> _value,
      $Res Function(_$SuccessUpdateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessUpdateImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessUpdateImpl<T> implements SuccessUpdate<T> {
  const _$SuccessUpdateImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ProductsState<$T>.successUpdate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUpdateImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUpdateImplCopyWith<T, _$SuccessUpdateImpl<T>> get copyWith =>
      __$$SuccessUpdateImplCopyWithImpl<T, _$SuccessUpdateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) {
    return successUpdate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) {
    return successUpdate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) {
    return successUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) {
    return successUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (successUpdate != null) {
      return successUpdate(this);
    }
    return orElse();
  }
}

abstract class SuccessUpdate<T> implements ProductsState<T> {
  const factory SuccessUpdate(final T data) = _$SuccessUpdateImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessUpdateImplCopyWith<T, _$SuccessUpdateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessDeleteImplCopyWith<T, $Res> {
  factory _$$SuccessDeleteImplCopyWith(_$SuccessDeleteImpl<T> value,
          $Res Function(_$SuccessDeleteImpl<T>) then) =
      __$$SuccessDeleteImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessDeleteImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$SuccessDeleteImpl<T>>
    implements _$$SuccessDeleteImplCopyWith<T, $Res> {
  __$$SuccessDeleteImplCopyWithImpl(_$SuccessDeleteImpl<T> _value,
      $Res Function(_$SuccessDeleteImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessDeleteImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessDeleteImpl<T> implements SuccessDelete<T> {
  const _$SuccessDeleteImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ProductsState<$T>.successDelete(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDeleteImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDeleteImplCopyWith<T, _$SuccessDeleteImpl<T>> get copyWith =>
      __$$SuccessDeleteImplCopyWithImpl<T, _$SuccessDeleteImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) {
    return successDelete(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) {
    return successDelete?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) {
    return successDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) {
    return successDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete(this);
    }
    return orElse();
  }
}

abstract class SuccessDelete<T> implements ProductsState<T> {
  const factory SuccessDelete(final T data) = _$SuccessDeleteImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessDeleteImplCopyWith<T, _$SuccessDeleteImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ProductsState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) productsFetched,
    required TResult Function(T data) successAdd,
    required TResult Function(T data) successUpdate,
    required TResult Function(T data) successDelete,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? productsFetched,
    TResult? Function(T data)? successAdd,
    TResult? Function(T data)? successUpdate,
    TResult? Function(T data)? successDelete,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? productsFetched,
    TResult Function(T data)? successAdd,
    TResult Function(T data)? successUpdate,
    TResult Function(T data)? successDelete,
    TResult Function(String error)? error,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ProductsFetched<T> value) productsFetched,
    required TResult Function(SuccessAdd<T> value) successAdd,
    required TResult Function(SuccessUpdate<T> value) successUpdate,
    required TResult Function(SuccessDelete<T> value) successDelete,
    required TResult Function(Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ProductsFetched<T> value)? productsFetched,
    TResult? Function(SuccessAdd<T> value)? successAdd,
    TResult? Function(SuccessUpdate<T> value)? successUpdate,
    TResult? Function(SuccessDelete<T> value)? successDelete,
    TResult? Function(Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ProductsFetched<T> value)? productsFetched,
    TResult Function(SuccessAdd<T> value)? successAdd,
    TResult Function(SuccessUpdate<T> value)? successUpdate,
    TResult Function(SuccessDelete<T> value)? successDelete,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements ProductsState<T> {
  const factory Error({required final String error}) = _$ErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
