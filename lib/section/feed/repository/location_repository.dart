// location_repository.dart
import "../model/location.dart";

class LocationRepository {
  Future<List<Location>> fetchLocations() async {
    // 더미 데이터를 사용했습니다.
    return [
      Location(id: 1, name: "울릉도"),
      Location(id: 2, name: "거제도"),
    ];
  }
}

