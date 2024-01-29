import 'package:flutter_ecommerce_group_project/models/product.dart';


class CartItem {
  final Shoes product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}


