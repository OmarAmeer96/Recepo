import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recepo/Features/home/data/repos/products_repo.dart';
import 'package:recepo/Features/home/logic/product_cubit/products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;
  int _skip = 0;
  final int _limit = 10;
  bool hasReachedEnd = false;
  String currentQuery = '';

  final formKey = GlobalKey<FormState>();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();

  TextEditingController addProductNameController = TextEditingController();
  TextEditingController addProductDescriptionController =
      TextEditingController();
  TextEditingController addProductPriceController = TextEditingController();

  ProductsCubit(this._productsRepo) : super(const ProductsState.initial());

  void getProducts() async {
    if (hasReachedEnd || state is! ProductsFetched && state is! Initial) {
      return;
    }
    if (state is! ProductsFetched) {
      emit(const ProductsState.loading());
    }
    final response = await _productsRepo.getProducts(_limit, _skip);
    response.when(
      success: (productsModelResponse) {
        _skip += _limit;
        if (productsModelResponse.products!.length < _limit) {
          hasReachedEnd = true;
        }
        if (state is ProductsFetched) {
          final oldProducts = (state as ProductsFetched).data.products;
          final newProducts = oldProducts + productsModelResponse.products!;
          emit(ProductsState.productsFetched(
              productsModelResponse.copyWith(products: newProducts)));
        } else {
          emit(ProductsState.productsFetched(productsModelResponse));
        }
      },
      failure: (error) {
        emit(ProductsState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!'));
      },
    );
  }

  void searchProducts(String query) async {
    currentQuery = query;
    _skip = 0;
    hasReachedEnd = false;

    if (state is! ProductsFetched) {
      // emit(const ProductsState.loading());
    }
    final response = await _productsRepo.searchProducts(query, _limit, _skip);
    response.when(
      success: (productsModelResponse) {
        _skip += _limit;
        if (productsModelResponse.products!.length < _limit) {
          hasReachedEnd = true;
        }
        emit(ProductsState.productsFetched(productsModelResponse));
      },
      failure: (error) {
        emit(ProductsState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!'));
      },
    );
  }

  void deleteProduct(int id) async {
    final response = await _productsRepo.deleteProduct(id);
    response.when(
      success: (productsModelResponse) {
        final products = (state as ProductsFetched).data.products;
        final newProducts =
            products.where((element) => element.id != id).toList();
        emit(ProductsState.productsFetched(
            productsModelResponse.copyWith(products: newProducts)));
      },
      failure: (error) {
        emit(ProductsState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!'));
      },
    );
  }

  void emitUpdateProductState(int productId) async {
    // if (!formKey.currentState!.validate()) return;

    emit(const ProductsState.loading());
    final response = await _productsRepo.updateProduct(
      productId,
      productNameController.text,
      double.parse(productPriceController.text),
      productDescriptionController.text,
    );
    response.when(
      success: (updateProductResponse) async {
        {
          emit(ProductsState.successUpdate(updateProductResponse));
        }
      },
      failure: (error) {
        emit(ProductsState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!'));
      },
    );
  }

  void addProduct() async {
    // if (!formKey.currentState!.validate()) return;

    emit(const ProductsState.loading());
    final response = await _productsRepo.addProduct(
      addProductNameController.text,
      addProductDescriptionController.text,
      double.parse(addProductPriceController.text),
    );
    response.when(
      success: (addProductResponse) async {
        {
          emit(ProductsState.successAdd(addProductResponse));
        }
      },
      failure: (error) {
        emit(ProductsState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!'));
      },
    );
  }

  void clearSearch() {
    currentQuery = '';
    _skip = 0;
    hasReachedEnd = false;
    getProducts();
  }
}
