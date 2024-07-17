// add_ticket_image_viewmodel.dart
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";
import "dart:io";

class AddTicketImageViewModel extends GetxController {
  final ImagePicker _picker = ImagePicker();
  var selectedImage = Rxn<File>();

  Future<XFile?> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }

  void setImage(File image) {
    selectedImage.value = image;
    Get.find<TravelToolsViewModel>().setTicketImage(image);
  }
}

