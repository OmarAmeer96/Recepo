import 'package:recepo/Core/networking/api_error_handler.dart';
import 'package:recepo/Core/networking/api_result.dart';
import 'package:recepo/Core/networking/api_service.dart';
import 'package:recepo/Features/home/data/models/products_model.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ApiResult<ProductsModel>> getProducts(
    int limit,
    int skip,
  ) async {
    try {
      final response = await _apiService.getProducts(
        limit: limit,
        skip: skip,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ProductsModel>> searchProducts(
    String query,
    int limit,
    int skip,
  ) async {
    try {
      final response = await _apiService.searchProducts(
        query: query,
        limit: limit,
        skip: skip,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ProductsModel>> deleteProduct(
    int id,
  ) async {
    try {
      final response = await _apiService.deleteProduct(
        id: id,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<Product>> updateProduct(
    int id,
    String title,
    double price,
    String description,
  ) async {
    try {
      final response = await _apiService.updateProduct(
        id: id,
        title: title,
        price: price,
        description: description,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<Product>> addProduct(
    String title,
    String description,
    double price,
  ) async {
    try {
      final response = await _apiService.addProduct(
        title: title,
        description: description,
        price: price,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
