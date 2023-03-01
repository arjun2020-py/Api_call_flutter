import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'api_search_controller.dart';

class DataTabelScreen extends StatelessWidget {
  DataTabelScreen({super.key});
  final controller = Get.put(GetProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data tabel'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Center(
            child: DataTable(
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid),
                showBottomBorder: true,
                dividerThickness: 3,
                headingRowHeight: 80,
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.teal),
                sortAscending: true,
                sortColumnIndex: 0,
                columnSpacing: 68,
                columns: const [
                  DataColumn(label: Center(child: Text('Tilte'))),
                  DataColumn(label: Center(child: Text('Price'))),
                  DataColumn(label: Center(child: Text('images'))),
                  DataColumn(label: Text('cata')),
                  DataColumn(label: Center(child: Text('Decrption')))
                ],
                rows: List.generate(controller.productList.length, (index) {
                  final title = controller.productList[index].title;
                  final price = controller.productList[index].price;
                  final image = controller.productList[index].image;
                  final cta = controller.productList[index].category.name;
                  final decption = controller.productList[index].description;
                  return DataRow(cells: [
                    DataCell(Text(title.toString())),
                    DataCell(Text(price.toString())),
                    DataCell(Image.network(image.toString())),
                    DataCell(Text(cta.toString())),
                    DataCell(Text(decption.toString()))
                  ]);
                })),
          ),
        ),
      ),
    );
  }
}
