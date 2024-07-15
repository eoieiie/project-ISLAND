// travel_tools_viewmodel.dart
import "package:get/get.dart";
import "../model/weather.dart";
import "../repository/weather_repository.dart";
import "../repository/ticket_repository.dart";
import "package:url_launcher/url_launcher.dart";
import "dart:io";

class TravelToolsViewModel extends GetxController {
  var islands = ["울릉도", "거제도", "제주도"].obs;
  var selectedIsland = Rxn<String>();
  var weatherForecast = <Weather>[].obs;
  var transportationInfo = ["선박 티켓 정보 1", "선박 티켓 정보 2"].obs;
  var ticketImage = Rxn<File>();

  final WeatherRepository weatherRepository = WeatherRepository();
  final TicketRepository ticketRepository = TicketRepository();

  @override
  void onInit() {
    super.onInit();
    fetchWeather();
  }

  void selectIsland(String island) {
    selectedIsland.value = island;
    fetchWeather();
  }

  void fetchWeather() async {
    if (selectedIsland.value != null) {
      var forecast = await weatherRepository.fetchWeatherForecast(selectedIsland.value!);
      weatherForecast.assignAll(forecast);
    }
  }

  void openTicketBookingSite() async {
    const url = "https://www.ticketbooking.com";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  void setTicketImage(File image) {
    ticketImage.value = image;
  }
}

