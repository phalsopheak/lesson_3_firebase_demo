import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lesson_3_firebase_demo/model/picture.model.dart';
import 'package:get/get.dart';
import 'package:lesson_3_firebase_demo/service/http.service.dart';

class PictureController extends GetxController {
  var pictureList = List<PictureModel>().obs;

  @override
  void onInit() {
    getAllProduct();
    super.onInit();
  }

  void addPicture() {
    pictureList.insert(
      0,
      PictureModel(
          id: '1',
          author: 'sopheak',
          width: 34,
          height: 34,
          url: 'test url',
          downloadUrl: 'https://picsum.photos/id/0/5616/3744'),
    );
  }

  Future<void> getAllProduct() async {
    pictureList.clear();
    var jsonObject = await HttpService.getAllPicture();

    if (jsonObject != null) {
      for (var obj in jsonObject) {
        pictureList.add(
          PictureModel(
            id: obj['id'],
            author: obj['author'],
            width: obj['width'],
            height: obj['height'],
            url: obj['url'],
            downloadUrl: obj['download_url'],
          ),
        );
      }
    }
  }

  Future<void> getAllProduct100() async {
    pictureList.clear();
    var jsonObject = await HttpService.getAllPicture100();

    if (jsonObject != null) {
      for (var obj in jsonObject) {
        pictureList.add(
          PictureModel(
            id: obj['id'],
            author: obj['author'],
            width: obj['width'],
            height: obj['height'],
            url: obj['url'],
            downloadUrl: obj['download_url'],
          ),
        );
      }
    }
  }
}
