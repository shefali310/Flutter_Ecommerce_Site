import '../models/product.dart';
import 'package:flutter_ecommerce_group_project/models/cartItem.dart';


class Cart {
  // List to store cart items
  static List<CartItem> cartItems = [];

  // Method to add a product to the cart
  static void addToCart(Shoes product) {
    // Check if the product already exists in the cart
    CartItem existingItem = cartItems.firstWhere(
          (item) => item.product == product,
      orElse: () => CartItem(product: product, quantity: 0),
    );

    // If the product is not in the cart, add it with quantity 1
    if (existingItem.quantity == 0) {
      cartItems.add(CartItem(product: product, quantity: 1));
    } else {
      // If the product is already in the cart, update its quantity
      cartItems[cartItems.indexOf(existingItem)] =
          CartItem(product: product, quantity: existingItem.quantity + 1);
    }
  }

  // Method to remove a product from the cart
  static void removeFromCart(Shoes product) {
    cartItems.removeWhere((item) => item.product == product);
  }

  // Method to calculate the total cost of items in the cart
  static double calculateTotal() {
    // Using fold to sum up the total cost
    return cartItems.fold(0.0, (total, item) => total + (item.product.price * item.quantity));
  }
}
