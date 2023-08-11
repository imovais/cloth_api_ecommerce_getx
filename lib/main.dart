import 'package:cloth_api_ecommerce_getx/SERVICES/fetch_api.dart';
import 'package:cloth_api_ecommerce_getx/VIEWS/HOME_SCREEN/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'VIEWS/CART_SCREEN/cart_view.dart';
import 'VIEWS/SPLASH_SCREEN/splash_view.dart';

void main() {
  runApp(const MyApp());
  Get.put(FetchApi());
  Get.put(const CartView());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: 'splash',
      defaultTransition: Transition.leftToRight,
      //unknownRoute: GetPage(name: name, page: page),
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeView(),
        ),
        GetPage(
          name: '/splash',
          page: () => const SplashView(),
        ),
        GetPage(
          name: '/cart',
          page: () => const CartView(),
        ),
      ],
    );
  }
}
