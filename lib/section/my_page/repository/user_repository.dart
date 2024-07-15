// user_repository.dart
import "../model/user.dart";

class UserRepository {
  Future<User> fetchUser() async {
    // 더미 데이터를 사용했습니다.
    return User(
      profileImageUrl: "https://example.com/profile.jpg",
      nickname: "닉네임",
      intro: "한 줄 소개",
      points: 50,
    );
  }
}

