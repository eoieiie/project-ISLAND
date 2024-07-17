// my_travel_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/my_travel_viewmodel.dart";
import "travel_schedule_view.dart";

class MyTravelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyTravelViewModel viewModel = Get.put(MyTravelViewModel());

    return Obx(() {
      return ListView.builder(
        itemCount: viewModel.travels.length,
        itemBuilder: (context, index) {
          final travel = viewModel.travels[index];
          return ListTile(
            title: Text(travel.name),
            subtitle: Text("${travel.startDate} - ${travel.endDate}"),
            onTap: () {
              Get.to(() => TravelScheduleView(travel: travel));
            },
          );
        },
      );
    });
  }
}

