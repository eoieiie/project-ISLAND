// weather_repository.dart
import "../model/weather.dart";

class WeatherRepository {
  Future<List<Weather>> fetchWeatherForecast(String island) async {
    // 여기서는 더미 데이터를 사용했습니다.
    return [
      Weather(date: "7.10", condition: "맑음", temperature: "17/19"),
      Weather(date: "7.11", condition: "흐림", temperature: "18/29"),
      Weather(date: "7.12", condition: "비", temperature: "18/23"),
      Weather(date: "7.13", condition: "맑음", temperature: "18/26"),
    ];
  }
}

