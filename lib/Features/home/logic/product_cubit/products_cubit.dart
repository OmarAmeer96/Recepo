import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Features/home/data/repos/products_repo.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;

  ProductsCubit(this._productsRepo) : super(const ProductsState.initial());

  void getProducts(int limit, int skip) async {
    emit(const ProductsState.loading());
    final response = await _productsRepo.getProducts(limit, skip);
    response.when(
      success: (productsModelResponse) {
        emit(ProductsState.productsFetched(productsModelResponse));
      },
      failure: (error) {
        emit(ProductsState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!'));
      },
    );
  }

  // void addProduct(Product product) async {
  //   emit(const ProductsState.loading());
  //   final token = SharedPrefs.getString(key: kToken)!;
  //   final response = await _productsRepo.addProduct(token, product);
  //   response.when(
  //     success: (addProductResponse) {
  //       emit(ProductsState.successAdd(addProductResponse));
  //     },
  //     failure: (error) {
  //       emit(ProductsState.error(
  //           error: error.apiErrorModel.message ?? 'Something went wrong!'));
  //     },
  //   );
  // }

  // void deleteProduct(int id) async {
  //   emit(const ProductsState.loading());
  //   final token = SharedPrefs.getString(key: kToken)!;
  //   final response = await _productsRepo.deleteProduct(token, id);
  //   response.when(
  //     success: (deleteProductResponse) {
  //       emit(ProductsState.successDelete(deleteProductResponse));
  //     },
  //     failure: (error) {
  //       emit(ProductsState.error(
  //           error: error.apiErrorModel.message ?? 'Something went wrong!'));
  //     },
  //   );
  // }
}
