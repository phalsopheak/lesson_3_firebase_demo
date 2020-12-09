import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson_3_firebase_demo/controller/list.controller.dart';
import 'package:lesson_3_firebase_demo/model/product.model.dart';

class ListViewDemo extends StatelessWidget {
  final ListController listController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Demo'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  child: TextField(
                    controller: listController.tecProductName,
                    decoration: InputDecoration(
                      hintText: 'Product name',
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: TextField(
                    controller: listController.tecPrice,
                    decoration: InputDecoration(
                      hintText: 'Product price',
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    child: Text('Save'),
                    onPressed: () {
                      listController.addProduct(
                        ProductModel(
                          productName: listController.tecProductName.text,
                          productPrice: listController.tecPrice.text,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemCount: listController.listProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          color: Colors.orange,
                          child: Text(
                              '${listController.listProduct[index].productName} - ${listController.listProduct[index].productPrice}'),
                          height: 50,
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
