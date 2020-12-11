import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson_3_firebase_demo/controller/picture.controller.dart';

class PictureView extends StatelessWidget {
  final PictureController pc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Picture View ${pc.pictureList.length}'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () => pc.getAllProduct(),
          ),
          IconButton(
            icon: Icon(Icons.picture_as_pdf),
            onPressed: () => pc.getAllProduct100(),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => pc.addPicture(),
          ),
        ],
      ),
      body: Container(
        child: Obx(
          () => ListView.builder(
            itemCount: pc.pictureList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    pc.pictureList[index].downloadUrl,
                  ),
                ),
                title: Text(pc.pictureList[index].author),
                subtitle: Text(pc.pictureList[index].url),
              );
            },
          ),
        ),
      ),
    );
  }
}
