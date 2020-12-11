import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:lesson_3_firebase_demo/controller/list.controller.dart';
import 'package:lesson_3_firebase_demo/controller/picture.controller.dart';
import 'package:lesson_3_firebase_demo/view/home.view.dart';
import 'package:lesson_3_firebase_demo/view/list.view.dart';
import 'package:lesson_3_firebase_demo/view/picture.view.dart';

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
        GetPage(
          name: '/picture',
          page: () => PictureView(),
        ),
      ],
    ),
  );
}

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ListController>(ListController());
    Get.put<PictureController>(PictureController());
  }
}
