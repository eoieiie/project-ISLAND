// profile_edit_viewmodel.dart
import "package:get/get.dart";
import "../repository/user_repository.dart";

class ProfileEditViewModel extends GetxController {
  var profileImageUrl = "https://example.com/profile.jpg";
  var nickname = "닉네임";
  var intro = "한 줄 소개";
  UserRepository repository = UserRepository();

  void saveProfile() {
    // 프로필 저장 로직 구현
  }
}

