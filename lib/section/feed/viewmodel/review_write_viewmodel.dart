// review_write_viewmodel.dart
import "package:get/get.dart";
import "../repository/feed_repository.dart";
import "../model/post.dart";

class ReviewWriteViewModel extends GetxController {
  var location = "";
  var review = "";
  var rating = 1;

  final FeedRepository repository = FeedRepository();

  void submitReview() {
    final newPost = Post(
      location: location,
      review: review,
      rating: rating,
      // 기타 필요한 필드
    );
    repository.addPost(newPost);
  }
}

