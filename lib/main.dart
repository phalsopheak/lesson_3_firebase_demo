import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:lesson_3_firebase_demo/controller/list.controller.dart';
import 'package:lesson_3_firebase_demo/view/home.view.dart';
import 'package:lesson_3_firebase_demo/view/list.view.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      initialBinding: CounterBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeView(),
        ),
        GetPage(
          name: '/listview',
          page: () => ListViewDemo(),
        ),
      ],
    ),
  );
}

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ListController>(ListController());
  }
}
