import 'package:recepo/Core/networking/api_error_handler.dart';
import 'package:recepo/Core/networking/api_result.dart';
import 'package:recepo/Core/networking/api_service.dart';
import 'package:recepo/Features/home/data/models/products_model.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ApiResult<ProductsModel>> getProducts(
      int limit, int skip) async {
    try {
      final response = await _apiService.getProducts(limit: limit, skip: skip);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  // Future<ApiResult<AddProductResponse>> addProduct(
  //     String token, Product product) async {
  //   try {
  //     final response = await _apiService.addProduct(
  //         token: 'Bearer $token', product: product);
  //     return ApiResult.success(response);
  //   } catch (error) {
  //     return ApiResult.failure(ErrorHandler.handle(error));
  //   }
  // }

  // Future<ApiResult<DeleteProductResponse>> deleteProduct(
  //     String token, int id) async {
  //   try {
  //     final response =
  //         await _apiService.deleteProduct(token: 'Bearer $token', id: id);
  //     return ApiResult.success(response);
  //   } catch (error) {
  //     return ApiResult.failure(ErrorHandler.handle(error));
  //   }
  // }
}
