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
}
