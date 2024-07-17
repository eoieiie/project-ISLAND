// add_photo_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/add_photo_viewmodel.dart";

class AddPhotoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AddPhotoViewModel viewModel = Get.put(AddPhotoViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("사진 업로드"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final pickedFile = await viewModel.pickImage();
            if (pickedFile != null) {
              Get.to(() => ReviewWriteView(image: pickedFile));
            }
          },
          child: Text("사진 선택하기"),
        ),
      ),
    );
  }
}

