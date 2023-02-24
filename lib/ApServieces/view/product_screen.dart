import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/ApServieces/view/product_drower.dart';

import '../controller/product_controller.dart';
import 'detailed_product_screen.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final controller = Get.put(ProductController());

  @override
  void initState() {
    super.initState();
    controller.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProductDrwaerScreen(),
      backgroundColor: Color(0xffe6e9e6),
      appBar: AppBar(
        backgroundColor: const Color(0xffec4497),
        // leading: IconButton(
        //     onPressed: () {
        //       Get.back();
        //     },
        //     icon: const Icon(Icons.arrow_back)),
        title: const Text('meesho'),
      ),
      body: Obx(() {
        return controller.loading.value == true
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 22,
                    mainAxisSpacing: 22,
                    childAspectRatio: 0.75,
                    mainAxisExtent: 350),
                itemCount: controller.Product_model.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = controller.Product_model[index];
                  return SingleChildScrollView(
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            DetailedProductScreen(detiedPro: data),
                      )),
                      child: Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Image.network(
                                data.image.toString(),
                                height: 150,
                              ),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(data.title.toString()),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.currency_rupee,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        data.price.toString(),
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text('onwards')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 200.r),
                                    child: Text('Free Devlivery'),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        color: const Color(0xff55bc76),
                                        child: Row(
                                          children: [
                                            Text(
                                              data.rating!.rate.toString(),
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text('count'),
                                          Text('Reviwers')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
      }),
    );
  }
}
