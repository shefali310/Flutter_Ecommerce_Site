import 'package:flutter/material.dart';
import '../models/cart.dart';
import '../models/product.dart';
import 'package:flutter_ecommerce_group_project/models/cartItem.dart';
import 'package:flutter_ecommerce_group_project/screens/checkout_screen.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  // State class for CartScreen widget
  // ignore: library_private_types_in_public_api
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  // Build method to create the UI for the CartScreen
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {
              // Navigate back to the home screen
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cart Items',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Cart.cartItems.length,
                itemBuilder: (context, index) {
                  CartItem cartItem = Cart.cartItems[index];
                  Shoes product = cartItem.product;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        // Shoe Image
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(product.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        // Shoe Details and Quantity Input
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8.0),
                              Text('\$${product.price.toStringAsFixed(2)} each'),
                              const SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Quantity Input using TextFormField
                                  SizedBox(
                                    width: 60.0,
                                    child: TextFormField(
                                      initialValue: cartItem.quantity.toString(),
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        // Update quantity when input changes
                                        _updateQuantity(index, int.tryParse(value) ?? 0);
                                      },
                                    ),
                                  ),
                                  // Remove Button
                                  IconButton(
                                    icon: const Icon(Icons.remove_shopping_cart),
                                    onPressed: () {
                                      // Remove item from the cart
                                      _removeItemFromCart(context, index);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            Text(
              'Total: \$${Cart.calculateTotal().toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            // Checkout Button
            ElevatedButton(
              onPressed: () {
                // Navigate to the CheckoutScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckoutScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to update the quantity of an item in the cart
  void _updateQuantity(int index, int newQuantity) {
    setState(() {
      // Update the quantity of the item in the cart
      Cart.cartItems[index].quantity = newQuantity;
    });
  }

  // Method to remove an item from the cart
  void _removeItemFromCart(BuildContext context, int index) {
    CartItem cartItem = Cart.cartItems[index];
    Shoes product = cartItem.product;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.name} removed from cart'),
        duration: const Duration(seconds: 2),
      ),
    );
    setState(() {
      // Remove the item from the cart
      Cart.cartItems.removeAt(index);
    });
  }
}
