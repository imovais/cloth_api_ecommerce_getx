
import 'package:get/get.dart';

import '../../SERVICES/cart_service.dart';

class CartViewModel extends GetxController {
  final CartService _cartService = Get.find();

  get cartList => _cartService.cartList;
}
