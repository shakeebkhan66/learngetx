import 'package:get/get.dart';
import 'package:learngetx/mvvm/res/routes/routes_name.dart';
import 'package:learngetx/mvvm/view/splash_screen.dart';
import 'package:learngetx/screens/favourite_fruits_screen.dart';

import '../../../screens/image_pick_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
            name: RoutesName.imagePicker,
            page: () => const ImagePickScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.favFruits,
            page: () => const FavouriteFruitsScreen(),
            transition: Transition.leftToRightWithFade)
      ];
}
