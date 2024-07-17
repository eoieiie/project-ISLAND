// profile_edit_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/profile_edit_viewmodel.dart";
import "add_profile_image_view.dart";

class ProfileEditView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProfileEditViewModel viewModel = Get.put(ProfileEditViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("프로필 편집"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => AddProfileImageView());
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(viewModel.profileImageUrl),
              ),
            ),
            TextField(
              decoration: InputDecoration(labelText: "닉네임"),
              controller: TextEditingController(text: viewModel.nickname),
              onChanged: (value) {
                viewModel.nickname = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "한 줄 소개"),
              controller: TextEditingController(text: viewModel.intro),
              onChanged: (value) {
                viewModel.intro = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.saveProfile();
              },
              child: Text("저장"),
            ),
          ],
        ),
      ),
    );
  }
}

