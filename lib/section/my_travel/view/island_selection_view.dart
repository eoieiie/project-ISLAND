// island_selection_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodel/island_selection_viewmodel.dart';

class IslandSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IslandSelectionViewModel viewModel = Get.put(IslandSelectionViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text('섬 선택'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: viewModel.islands.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(viewModel.islands[index].name),
              onTap: () {
                viewModel.selectIsland(viewModel.islands[index]);
              },
            );
          },
        );
      }),
      bottomNavigationBar: Obx(() {
        return ElevatedButton(
          onPressed: viewModel.selectedIsland.value != null ? () {
            Get.to(() => TravelDatesView());
          } : null,
          child: Text('${viewModel.selectedIsland.value?.name ?? ''}로 여행하기'),
        );
      }),
    );
  }
}

