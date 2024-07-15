// add_photo_viewmodel.dart
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";

class AddPhotoViewModel extends GetxController {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }
}

