import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/ApServieces/model/get_product_model.dart';
import 'package:task/ApServieces/view/product_drower.dart';

class DetailedProductScreen extends StatelessWidget {
  DetailedProductScreen({super.key, required this.detiedPro});
  GetProductModel detiedPro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0.r),
        child: Card(
          child: ListTile(
            title: Hero(
              transitionOnUserGestures: true,
              tag: 'img1',
              child: Image.network(
                detiedPro.image.toString(),
                height: 350.h,
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Add to Cart')),
                SizedBox(
                  width: 20.w,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.navigate_next),
                    label: const Text('Buy Now'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
