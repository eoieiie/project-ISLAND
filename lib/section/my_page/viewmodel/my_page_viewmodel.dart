// my_page_viewmodel.dart
import "package:get/get.dart";
import "../model/user.dart";
import "../repository/user_repository.dart";

class MyPageViewModel extends GetxController {
  var user = User(
    profileImageUrl: "https://example.com/profile.jpg",
    nickname: "닉네임",
    intro: "한 줄 소개",
    points: 50,
  ).obs;
  UserRepository repository = UserRepository();

  @override
  void onInit() {
    super.onInit();
    fetchUser();
  }

  void fetchUser() async {
    var fetchedUser = await repository.fetchUser();
    user.value = fetchedUser;
  }
}

