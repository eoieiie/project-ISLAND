/*
// my_travel_viewmodel.dart
import 'package:get/get.dart';
import '../model/travel.dart';
import '../repository/travel_repository.dart';

class MyTravelViewModel extends GetxController {
  var travels = <Travel>[].obs;
  TravelRepository repository = TravelRepository();

  @override
  void onInit() {
    super.onInit();
    fetchTravels();
  }

  void fetchTravels() async {
    var fetchedTravels = await repository.fetchMyTravels();
    travels.assignAll(fetchedTravels);
  }
}

*/
