// add_ticket_image_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/add_ticket_image_viewmodel.dart";
import "package:image_picker/image_picker.dart";

class AddTicketImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AddTicketImageViewModel viewModel = Get.put(AddTicketImageViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("사진 업로드"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final pickedFile = await viewModel.pickImage();
            if (pickedFile != null) {
              viewModel.setImage(File(pickedFile.path));
              Get.back();
            }
          },
          child: Text("사진 선택하기"),
        ),
      ),
    );
  }
}

