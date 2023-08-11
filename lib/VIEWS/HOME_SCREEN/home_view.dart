import 'package:cloth_api_ecommerce_getx/CONSTANT/app_string.dart';
import 'package:cloth_api_ecommerce_getx/MODELS/api_data.dart';
import 'package:cloth_api_ecommerce_getx/VIEWS/CART_SCREEN/cart_view.dart';
import 'package:cloth_api_ecommerce_getx/VIEWS/HOME_SCREEN/home_viewModel.dart';
import 'package:cloth_api_ecommerce_getx/VIEWS/WIDGETS/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeViewModel controller = Get.put(HomeViewModel());
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppString.appName),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {
                  Get.toNamed('cart');
                },
                icon: const Icon(Icons.shopping_cart),
                iconSize: 25,
              ),
            )
          ],
        ),
        body: FutureBuilder(
          future: controller.fetchingApi,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7),
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                var data = snapshot.data[index] as Product;
                return ProductTile(
                  product: data,
                );
              },
            );
          },
        ));
  }
}
