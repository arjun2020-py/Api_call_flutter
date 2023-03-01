import 'package:get/get.dart';
import 'package:task/ScreenWidget/Screen/api_serach_repositry.dart';

import 'api_search_model.dart';

class GetProductController extends GetxController {
  var productList = <ProductsModel>[].obs;
  var searchProduct = <ProductsModel>[].obs;
  var isLoading = true.obs;
  var isPresed = true.obs;
  var resultList = <ProductsModel>[].obs;
  Future<void> getAllProduct() async {
    try {
      isLoading.value = true;
      var product = await ProductRepositry().fetachProduct();

      if (product != null) {
        productList.value = product;

        isLoading.value = false;
      }
    } catch (e) {
      Get.snackbar('error', '$e');
      isLoading.value = true;
    }
  }

  onTextChanged(String text) {
    searchProduct().clear();
    if (text.isEmpty) {
      productList.forEach((element) {
        searchProduct.add(element);
      });
    } else {
      resultList.value = productList
          .where((product) => product.title
              .toString()
              .toLowerCase()
              .contains(text.toLowerCase()))
          .toList();
    }
  }

  @override
  void onInit() {
    getAllProduct();

    super.onInit();
  }
}
