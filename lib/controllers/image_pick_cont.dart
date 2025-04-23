import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickController extends GetxController {
  RxString imagePath = ''.obs;

  Future getImage(ImageSource source) async {
    ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: source);

    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
