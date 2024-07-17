// comment_repository.dart
import "../model/comment.dart";

class CommentRepository {
  Future<List<Comment>> fetchComments(int postId) async {
    // 더미 데이터를 사용했습니다.
    return [
      Comment(id: 1, text: "Great photo!", postId: postId),
      Comment(id: 2, text: "Amazing!", postId: postId),
    ];
  }

  void addComment(Comment comment) {
    // 댓글 추가 기능 구현
  }
}

