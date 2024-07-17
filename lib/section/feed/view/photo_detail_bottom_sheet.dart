// photo_detail_bottom_sheet.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/photo_detail_viewmodel.dart";

class PhotoDetailBottomSheet extends StatelessWidget {
  final int locationId;

  PhotoDetailBottomSheet({required this.locationId});

  @override
  Widget build(BuildContext context) {
    final PhotoDetailViewModel viewModel = Get.find();

    return Container(
      height: 400,
      child: Column(
        children: [
          Text("이 장소의 다른 게시물"),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: viewModel.relatedPosts.length,
                itemBuilder: (context, index) {
                  final post = viewModel.relatedPosts[index];
                  return ListTile(
                    title: Text(post.title),
                    leading: Image.network(post.imageUrl),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

