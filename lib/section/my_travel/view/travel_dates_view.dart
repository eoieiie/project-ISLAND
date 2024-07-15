// travel_dates_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/travel_dates_viewmodel.dart';

class TravelDatesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TravelDatesViewModel viewModel = Get.put(TravelDatesViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text('여행 날짜'),
      ),
      body: Obx(() {
        return Column(
          children: [
            Text('여행 일정을 입력하세요.'),
            ListTile(
              title: Text('출발일'),
              subtitle: Text(viewModel.startDate.value),
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (picked != null) viewModel.setStartDate(picked);
              },
            ),
            ListTile(
              title: Text('도착일'),
              subtitle: Text(viewModel.endDate.value),
              onTap: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (picked != null) viewModel.setEndDate(picked);
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => TravelScheduleView());
              },
              child: Text('다음'),
            ),
          ],
        );
      }),
    );
  }
}

