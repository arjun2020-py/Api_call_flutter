import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/ApServieces/view/product_drower.dart';

import '../controller/product_controller.dart';
import '../model/get_product_model.dart';
import 'detailed_product_screen.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final controller = Get.put(ProductController());

  // @override
  // void initState() {
  //   super.initState();
  //   controller.getProduct();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ProductDrwaerScreen(),
      backgroundColor: Color(0xffe6e9e6),
      appBar: AppBar(
        backgroundColor: const Color(0xffec4497),
        title: const Text('meesho'),
        actions: [
          IconButton(
              onPressed: () {
                Card(
                  child: TextFormField(),
                );
                showSearch(context: context, delegate: mySearchDelegate());
              },
              icon: Icon(Icons.search))
        ],
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
                              title: Hero(
                                transitionOnUserGestures: true,
                                tag: 'img1',
                                child: Image.network(
                                  data.image.toString(),
                                  height: 100,
                                ),
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

class mySearchDelegate extends SearchDelegate {
  final controller = Get.put(ProductController());

  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.close));
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Obx(
      () => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 22,
            mainAxisSpacing: 22,
            childAspectRatio: 0.75,
            mainAxisExtent: 350),
        itemCount: controller.Serach_model.length,
        itemBuilder: (BuildContext context, int index) {
          GetProductModel data = controller.Serach_model[index];
          return SingleChildScrollView(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailedProductScreen(detiedPro: data),
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
                                style: const TextStyle(color: Colors.black),
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
                                    borderRadius: BorderRadius.circular(10)),
                                color: const Color(0xff55bc76),
                                child: Row(
                                  children: [
                                    Text(
                                      data.rating!.rate.toString(),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.white),
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
                      onTap: () {
                        query = data.toString();
                        showResults(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
