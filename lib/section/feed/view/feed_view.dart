// feed_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/feed_viewmodel.dart";
import "photo_detail_view.dart";

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FeedViewModel viewModel = Get.put(FeedViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("피드"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // 검색 기능
              viewModel.search();
            },
          ),
        ],
      ),
      body: Obx(() {
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
      }),
    );
  }
}

