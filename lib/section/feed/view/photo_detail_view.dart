// photo_detail_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/photo_detail_viewmodel.dart";
import "photo_detail_bottom_sheet.dart";
import "comment_bottom_sheet.dart";

class PhotoDetailView extends StatelessWidget {
  final Post post;

  PhotoDetailView({required this.post});

  @override
  Widget build(BuildContext context) {
    final PhotoDetailViewModel viewModel = Get.put(PhotoDetailViewModel(post: post));

    return Scaffold(
      appBar: AppBar(
        title: Text("사진 보기"),
      ),
      body: Column(
        children: [
          Image.network(post.imageUrl),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  viewModel.likePost();
                },
              ),
              Text("${viewModel.likesCount}"),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  Get.bottomSheet(CommentBottomSheet(post: post));
                },
              ),
              IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  viewModel.savePost();
                },
              ),
            ],
          ),
          Text(post.description),
          ElevatedButton(
            onPressed: () {
              Get.bottomSheet(PhotoDetailBottomSheet(locationId: post.locationId));
            },
            child: Text("이 장소의 다른 게시물 보기"),
          ),
        ],
      ),
    );
  }
}

