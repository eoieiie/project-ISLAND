// travel_dates_viewmodel.dart
import 'package:get/get.dart';

class TravelDatesViewModel extends GetxController {
  var startDate = ''.obs;
  var endDate = ''.obs;

  void setStartDate(DateTime date) {
    startDate.value = date.toString().split(' ')[0];
  }

  void setEndDate(DateTime date) {
    endDate.value = date.toString().split(' ')[0];
  }
}

