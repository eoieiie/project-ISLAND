// comment_bottom_sheet.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../model/comment.dart";
import "../viewmodel/photo_detail_viewmodel.dart";

class CommentBottomSheet extends StatelessWidget {
  final Post post;

  CommentBottomSheet({required this.post});

  @override
  Widget build(BuildContext context) {
    final PhotoDetailViewModel viewModel = Get.find();

    return Container(
      height: 400,
      child: Column(
        children: [
          Text("댓글"),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: viewModel.comments.length,
                itemBuilder: (context, index) {
                  final comment = viewModel.comments[index];
                  return ListTile(
                    title: Text(comment.text),
                  );
                },
              );
            }),
          ),
          TextField(
            decoration: InputDecoration(hintText: "댓글을 입력하세요..."),
            onSubmitted: (text) {
              viewModel.addComment(Comment(text: text, postId: post.id));
            },
          ),
        ],
      ),
    );
  }
}

