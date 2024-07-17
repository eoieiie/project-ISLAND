// feed_repository.dart
import "../model/post.dart";
import "../model/comment.dart";

class FeedRepository {
  Future<List<Post>> fetchPosts() async {
    // 더미 데이터를 사용했습니다.
    return [
      Post(id: 1, imageUrl: "https://example.com/photo1.jpg", likes: 10, description: "Beautiful place!", locationId: 1),
      Post(id: 2, imageUrl: "https://example.com/photo2.jpg", likes: 20, description: "Amazing view!", locationId: 2),
    ];
  }

  Future<List<Post>> fetchPostsByLocation(int locationId) async {
    // 더미 데이터를 사용했습니다.
    return [
      Post(id: 1, imageUrl: "https://example.com/photo1.jpg", likes: 10, description: "Beautiful place!", locationId: locationId),
      Post(id: 2, imageUrl: "https://example.com/photo2.jpg", likes: 20, description: "Amazing view!", locationId: locationId),
    ];
  }

  Future<List<Comment>> fetchComments(int postId) async {
    // 더미 데이터를 사용했습니다.
    return [
      Comment(id: 1, text: "Great photo!", postId: postId),
      Comment(id: 2, text: "Amazing!", postId: postId),
    ];
  }

  void likePost(int postId) {
    // 좋아요 기능 구현
  }

  void savePost(int postId) {
    // 저장 기능 구현
  }

  void addPost(Post post) {
    // 포스트 추가 기능 구현
  }

  void addComment(Comment comment) {
    // 댓글 추가 기능 구현
  }
}

