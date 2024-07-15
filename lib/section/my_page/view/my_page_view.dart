// my_page_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/my_page_viewmodel.dart";
import "profile_edit_view.dart";
import "my_posts_view.dart";
import "my_travel_view.dart";

class MyPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyPageViewModel viewModel = Get.put(MyPageViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("마이페이지"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // 설정 화면으로 이동
            },
          ),
        ],
      ),
      body: Obx(() {
        return Column(
          children: [
            // 프로필 정보
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(viewModel.user.profileImageUrl),
              ),
              title: Text(viewModel.user.nickname),
              subtitle: Text(viewModel.user.intro),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Get.to(() => ProfileEditView());
                },
              ),
            ),
            // 포인트 바
            LinearProgressIndicator(
              value: viewModel.user.points / 100,
            ),
            // 내 게시물
            Expanded(
              child: MyPostsView(),
            ),
            // 내 여행
            Expanded(
              child: MyTravelView(),
            ),
          ],
        );
      }),
    );
  }
}

