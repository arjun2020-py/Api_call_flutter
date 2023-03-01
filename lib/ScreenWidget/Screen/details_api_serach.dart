import 'package:flutter/material.dart';

import '../../getxTak/model/model.dart';
import 'api_search_model.dart';

class DetailsApiSearch extends StatelessWidget {
  DetailsApiSearch({super.key, required this.instance});
  ProductsModel instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        transitionOnUserGestures: true,
        tag: 'img1',
        child: Image.network(
          instance.image,
          height: 400,
          width: double.infinity,
        ),
      ),
    );
  }
}
