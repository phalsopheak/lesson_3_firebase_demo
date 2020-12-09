import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lesson_3_firebase_demo/model/product.model.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  TextEditingController tecProductName;
  TextEditingController tecPrice;

  var listProduct = List<ProductModel>().obs;

  @override
  void onInit() {
    listProduct.add(ProductModel(productName: 'test', productPrice: '12'));
    print('list controller init!!');
    tecProductName = TextEditingController();
    tecPrice = TextEditingController();

    super.onInit();
  }

  void addProduct(ProductModel model) {
    listProduct.add(model);
    tecPrice.text = '';
    tecProductName.text = '';
  }
}
