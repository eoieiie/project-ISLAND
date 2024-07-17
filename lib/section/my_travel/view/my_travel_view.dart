// // my_travel_view.dart
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../viewmodel/my_travel_viewmodel.dart';
//
// class MyTravelView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final MyTravelViewModel viewModel = Get.put(MyTravelViewModel());
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('내 여행'),
//       ),
//       body: Obx(() {
//         return ListView.builder(
//           itemCount: viewModel.travels.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(viewModel.travels[index].name),
//               subtitle: Text('${viewModel.travels[index].startDate} - ${viewModel.travels[index].endDate}'),
//             );
//           },
//         );
//       }),
//     );
//   }
// }
//
