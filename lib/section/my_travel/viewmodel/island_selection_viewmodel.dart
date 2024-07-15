// island_selection_viewmodel.dart
import 'package:get/get.dart';
import '../model/island.dart';
import '../repository/island_repository.dart';

class IslandSelectionViewModel extends GetxController {
  var islands = <Island>[].obs;
  var selectedIsland = Rxn<Island>();
  IslandRepository repository = IslandRepository();

  @override
  void onInit() {
    super.onInit();
    fetchIslands();
  }

  void fetchIslands() async {
    var fetchedIslands = await repository.fetchIslands();
    islands.assignAll(fetchedIslands);
  }

  void selectIsland(Island island) {
    selectedIsland.value = island;
  }
}

