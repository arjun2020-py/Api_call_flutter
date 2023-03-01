import 'package:dio/dio.dart';

import 'api_search_model.dart';

class ProductRepositry {
  var dio = Dio();

  Future<List<ProductsModel>?> fetachProduct() async {
    Response<String> response =
        await dio.get('https://fakestoreapi.com/products');

    if (response.statusCode == 200) {
      return productsModelFromJson(response.data.toString());
    } else {
      return null;
    }
  }
}
