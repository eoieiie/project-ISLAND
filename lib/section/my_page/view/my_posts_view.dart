// my_posts_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/my_posts_viewmodel.dart";
import "photo_detail_view.dart";

class MyPostsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyPostsViewModel viewModel = Get.put(MyPostsViewModel());

    return Obx(() {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: viewModel.posts.length,
        itemBuilder: (context, index) {
          final post = viewModel.posts[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => PhotoDetailView(post: post));
            },
            child: Image.network(post.imageUrl, fit: BoxFit.cover),
          );
        },
      );
    });
  }
}

