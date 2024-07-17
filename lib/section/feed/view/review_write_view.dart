// review_write_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";
import "../viewmodel/review_write_viewmodel.dart";

class ReviewWriteView extends StatelessWidget {
  final XFile image;

  ReviewWriteView({required this.image});

  @override
  Widget build(BuildContext context) {
    final ReviewWriteViewModel viewModel = Get.put(ReviewWriteViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("리뷰 작성"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.file(File(image.path)),
            TextField(
              decoration: InputDecoration(labelText: "위치"),
              onChanged: (value) {
                viewModel.location = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "어떤 점이 좋았나요?"),
              onChanged: (value) {
                viewModel.review = value;
              },
            ),
            DropdownButton<int>(
              value: viewModel.rating,
              items: List.generate(5, (index) => DropdownMenuItem(
                child: Text("${index + 1}"),
                value: index + 1,
              )),
              onChanged: (value) {
                viewModel.rating = value!;
              },
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.submitReview();
              },
              child: Text("저장"),
            ),
          ],
        ),
      ),
    );
  }
}

