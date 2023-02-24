import 'package:dio/dio.dart';

import '../model/get_product_model.dart';

class ProductServices {
  Future<List<GetProductModel>?> getServices() async {
    var dio = Dio();
    Response<String> response =
        await dio.get('https://fakestoreapi.com/products');
    if (response.statusCode == 200) {
      // var data = await jsonDecode(response.data);
      return getProductModelFromJson(response.data.toString());
    } else {
      return null;
    }
  }
}
