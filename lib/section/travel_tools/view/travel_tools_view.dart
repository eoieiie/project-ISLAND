// travel_tools_view.dart
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../viewmodel/travel_tools_viewmodel.dart";
import "add_ticket_image_view.dart";

class TravelToolsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TravelToolsViewModel viewModel = Get.put(TravelToolsViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text("여행 도구"),
      ),
      body: Obx(() {
        return Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: viewModel.islands.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => viewModel.selectIsland(viewModel.islands[index]),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Text(viewModel.islands[index].name),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // 날씨 정보
            if (viewModel.selectedIsland != null) ...[
              Text("${viewModel.selectedIsland!.name} 날씨"),
              ...viewModel.weatherForecast.map((weather) => ListTile(
                title: Text("${weather.date}"),
                subtitle: Text("${weather.condition} - ${weather.temperature}"),
              )),
            ],
            SizedBox(height: 20),
            // 배편 정보
            Text("배편 정보"),
            ...viewModel.transportationInfo.map((info) => ListTile(
              title: Text(info),
            )),
            ElevatedButton(
              onPressed: () {
                // 배편 예약 사이트로 이동
                viewModel.openTicketBookingSite();
              },
              child: Text("티켓 알아보기"),
            ),
            SizedBox(height: 20),
            // 티켓 이미지 업로드
            Text("선박 티켓"),
            ElevatedButton(
              onPressed: () {
                Get.to(() => AddTicketImageView());
              },
              child: Text("사진 업로드"),
            ),
            if (viewModel.ticketImage != null)
              Image.file(viewModel.ticketImage!),
          ],
        );
      }),
    );
  }
}

