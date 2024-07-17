// photo_detail_viewmodel.dart
import "package:get/get.dart";
import "../model/post.dart";
import "../repository/feed_repository.dart";
import "../model/comment.dart";

class PhotoDetailViewModel extends GetxController {
  final Post post;
  var relatedPosts = <Post>[].obs;
  var comments = <Comment>[].obs;
  var likesCount = 0.obs;

  FeedRepository repository = FeedRepository();

  PhotoDetailViewModel({required this.post});

  @override
  void onInit() {
    super.onInit();
    fetchRelatedPosts();
    fetchComments();
    likesCount.value = post.likes;
  }

  void fetchRelatedPosts() async {
    var fetchedPosts = await repository.fetchPostsByLocation(post.locationId);
    relatedPosts.assignAll(fetchedPosts);
  }

  void fetchComments() async {
    var fetchedComments = await repository.fetchComments(post.id);
    comments.assignAll(fetchedComments);
  }

  void likePost() {
    likesCount.value++;
    repository.likePost(post.id);
  }

  void savePost() {
    repository.savePost(post.id);
  }

  void addComment(Comment comment) {
    comments.add(comment);
    repository.addComment(comment);
  }
}

