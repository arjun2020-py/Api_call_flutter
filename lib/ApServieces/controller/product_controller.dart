import 'package:get/get.dart';
import 'package:task/ApServieces/model/get_product_model.dart';
import 'package:task/ApServieces/services/product_services.dart';

class ProductController extends GetxController {
  var Product_model = <GetProductModel>[].obs;

  var loading = true.obs;

  getProduct() async {
    try {
      loading.value = true;

      var data = await ProductServices().getServices();
      if (data != null) {
        Product_model.value = data;
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar('error', '$e');
      loading.value = false;
    }
  }

  @override
  //appliction start avobol function kode call chyum
  void onInit() {
    getProduct();
    super.onInit();
  }
}
