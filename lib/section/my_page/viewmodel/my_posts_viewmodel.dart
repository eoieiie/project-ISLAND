// my_posts_viewmodel.dart
import "package:get/get.dart";
import "../model/post.dart";
import "../repository/post_repository.dart";

class MyPostsViewModel extends GetxController {
  var posts = <Post>[].obs;
  PostRepository repository = PostRepository();

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async {
    var fetchedPosts = await repository.fetchMyPosts();
    posts.assignAll(fetchedPosts);
  }
}

