import 'package:get/get.dart';

class FavouriteItemController extends GetxController {
  RxList<String> fruitsList =
      ['Mango', 'Banana', 'Apple', 'Dates', 'Grapes'].obs;

  RxList tempFruitList = [].obs;

  addToFavFruitList(String value) {
    tempFruitList.add(value);
  }

  removeFromFavFruitList(String value) {
    tempFruitList.remove(value);
  }
}
