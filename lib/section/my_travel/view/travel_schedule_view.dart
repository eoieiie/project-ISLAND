// travel_schedule_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/travel_schedule_viewmodel.dart';

class TravelScheduleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TravelScheduleViewModel viewModel = Get.put(TravelScheduleViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text('여행 일정'),
      ),
      body: Obx(() {
        return Column(
          children: [
            Text('여행 일정 짜기'),
            // 일정 입력 UI
            ElevatedButton(
              onPressed: () {
                viewModel.addSchedule();
              },
              child: Text('일정 추가하기'),
            ),
          ],
        );
      }),
    );
  }
}

