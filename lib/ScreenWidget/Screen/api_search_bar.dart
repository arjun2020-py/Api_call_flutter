import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_search_controller.dart';
import 'details_api_serach.dart';

class ApiSearchbar extends StatelessWidget {
  ApiSearchbar({super.key});

  final controller = Get.put(GetProductController());
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('E-Shopping'),
        ),
        body: Obx(
          () {
            return controller.isLoading.value == true
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      Container(
                        child: TextFormField(
                          controller: searchController,
                          onChanged: (value) {
                            controller.onTextChanged(value);
                            // controller.runFlitter(value);
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    searchController.clear();
                                  },
                                  icon: const Icon(Icons.close)),
                              hintText: 'Serach Here....'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: controller.resultList.value.isNotEmpty
                              ? ListView.separated(
                                  itemCount: controller.resultList.length,
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return Column(children: [
                                      Container(
                                          height: 200,
                                          width: double.infinity,
                                          child: Image.network(controller
                                              .resultList[index].image)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                          'Rs${controller.resultList[index].price}',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Text(
                                            controller.resultList[index].title),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: const Text('Buy Now')),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: const Text('Add to Cart'))
                                        ],
                                      )
                                    ]);
                                  },
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const Divider();
                                  })
                              : ListView.separated(
                                  itemCount: controller.productList.length,
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () => Get.to(DetailsApiSearch(
                                        instance: controller.productList[index],
                                      )),
                                      child: Column(children: [
                                        Container(
                                            height: 200,
                                            width: double.infinity,
                                            child: Hero(
                                              transitionOnUserGestures: true,
                                              tag: 'img1',
                                              child: Image.network(controller
                                                  .productList[index].image),
                                            )),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Text(
                                            'Rs${controller.productList[index].price}',
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Text(controller
                                              .productList[index].title),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('Buy Now')),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {},
                                                child:
                                                    const Text('Add to Cart'))
                                          ],
                                        )
                                      ]),
                                    );
                                  },
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const Divider();
                                  })),
                    ],
                  );
          },
        ));
  }
}
