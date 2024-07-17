// home_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeViewModel viewModel = Get.put(HomeViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        child: Text('홈 화면입니다.'),
      ),
    );
  }
}

