// feed_viewmodel.dart
import "package:get/get.dart";
import "../model/post.dart";
import "../repository/feed_repository.dart";

class FeedViewModel extends GetxController {
  var posts = <Post>[].obs;
  FeedRepository repository = FeedRepository();

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async {
    var fetchedPosts = await repository.fetchPosts();
    posts.assignAll(fetchedPosts);
  }

  void search() {
    // 검색 로직 구현
  }
}

