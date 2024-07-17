// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'section/home/view/home_view.dart';
import 'section/feed/view/feed_view.dart';
import 'section/my_page/view/my_page_view.dart';
import 'section/my_travel/view/my_travel_view.dart';
import 'section/travel_tools/view/travel_tools_view.dart';
import 'section/home/repository/home_repository.dart';
import 'section/feed/repository/feed_repository.dart';
import 'section/my_page/repository/user_repository.dart';
import 'section/my_travel/repository/travel_repository.dart';
import 'section/travel_tools/repository/weather_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeView()),
        GetPage(name: '/feed', page: () => FeedView()),
        GetPage(name: '/my_page', page: () => MyPageView()),
        GetPage(name: '/my_travel', page: () => MyTravelView()),
        GetPage(name: '/travel_tools', page: () => TravelToolsView()),
      ],
    );
  }
}

void initDependencies() {
  // Repository 주입
  Get.put(HomeRepository());
  Get.put(FeedRepository());
  Get.put(UserRepository());
  Get.put(TravelRepository());
  Get.put(WeatherRepository());

  // ViewModel 주입
  // 예: Get.put(HomeViewModel());
}

