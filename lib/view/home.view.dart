import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Demo'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('List Demo'),
            onPressed: () => Get.toNamed('/listview'),
          ),
          RaisedButton(
            child: Text('Picture List'),
            onPressed: () => Get.toNamed('/picture'),
          ),
        ],
      ),
    );
  }
}
