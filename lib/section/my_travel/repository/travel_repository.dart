// travel_repository.dart
import ../model/travel.dart;

class TravelRepository {
  Future<List<Travel>> fetchMyTravels() async {
    // 더미 데이터를 사용했습니다.
    return [
      Travel(name: "거제도", startDate: "24.07.07", endDate: "24.07.14"),
      Travel(name: "제주도", startDate: "24.08.01", endDate: "24.08.10"),
    ];
  }
}

