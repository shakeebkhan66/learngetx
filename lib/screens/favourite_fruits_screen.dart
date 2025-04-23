import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/controllers/fav_item_cont.dart';

class FavouriteFruitsScreen extends StatefulWidget {
  const FavouriteFruitsScreen({super.key});

  @override
  State<FavouriteFruitsScreen> createState() => _FavouriteFruitsScreenState();
}

class _FavouriteFruitsScreenState extends State<FavouriteFruitsScreen> {
  FavouriteItemController controller = Get.put(FavouriteItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Fruits"),
      ),
      body: ListView.builder(
        itemCount: controller.fruitsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                if(controller.tempFruitList.contains(controller.fruitsList[index].toString())){
                  controller.removeFromFavFruitList(controller.fruitsList[index].toString());
                }else{
                  controller.addToFavFruitList(controller.fruitsList[index].toString());
                }
              },
              title: Text(controller.fruitsList[index].toString()),
              trailing: Obx(() {
                return controller.tempFruitList
                    .contains(controller.fruitsList[index].toString())
                    ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
                    : const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                );
              })
            ),
          );
        },
      ),
    );
  }
}
