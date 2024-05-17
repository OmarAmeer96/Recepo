import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_state.freezed.dart';

@freezed
class ProductsState<T> with _$ProductsState<T> {
  const factory ProductsState.initial() = Initial;
  const factory ProductsState.loading() = Loading;
  const factory ProductsState.productsFetched(T data) = ProductsFetched<T>;
  const factory ProductsState.successAdd(T data) = SuccessAdd<T>;
  const factory ProductsState.successDelete(T data) = SuccessDelete<T>;
  const factory ProductsState.error({required String error}) = Error;
}
