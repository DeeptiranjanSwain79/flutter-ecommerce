import 'package:ecommerce/components/cart.item.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getuserCart().length,
                          itemBuilder: (context, index) {
                            //get individual shoe
                            Shoe individualShoe = value.getuserCart()[index];

                            //return the cart item
                            return CartItem(shoe: individualShoe);
                          }))
                ],
              ),
            ));
  }
}
