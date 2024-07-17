// post_repository.dart
import "../model/post.dart";

class PostRepository {
  Future<List<Post>> fetchMyPosts() async {
    // 더미 데이터를 사용했습니다.
    return [
      Post(id: 1, imageUrl: "https://example.com/photo1.jpg", likes: 10, description: "Beautiful place!", locationId: 1),
      Post(id: 2, imageUrl: "https://example.com/photo2.jpg", likes: 20, description: "Amazing view!", locationId: 2),
    ];
  }
}

