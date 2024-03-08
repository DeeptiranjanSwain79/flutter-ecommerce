import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan 1 Low SE',
        price: '10295',
        imagePath: 'lib/images/shoe1.png',
        description: 'Colour Shown: White/Black/Sail/Blue Grey'),
    Shoe(
        name: 'Air Jordan 1 Zoom CMFT 2',
        price: '13295',
        imagePath: 'lib/images/shoe2.jpeg',
        description:
            'Colour Shown: Sail/Legend Medium Brown/Fossil/Legend Coffee'),
    Shoe(
        name: 'Air Jordan Legacy 312 Low',
        price: '12995',
        imagePath: 'lib/images/shoe3.png',
        description: 'Colour Shown: Summit White/Varsity Red/Sail/Black'),
    Shoe(
        name: 'Jumpman MVP',
        price: '15295',
        imagePath: 'lib/images/shoe4.png',
        description: 'Colour Shown: White/Black/Yellow Ochre'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShowList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getuserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
