import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0),
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),

          //description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              shoe.description.length > 30 ? '${shoe.description.substring(0, 30)}...' : shoe.description,
              style: TextStyle(color: Colors.grey[600], fontSize: 20),
            ),
          ),

          //name + price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name.length > 14
                          ? '${shoe.name.substring(0, 14)}...'
                          : shoe.name,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '₹${shoe.price}',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 244, 54, 82), fontSize: 23),
                    ),
                  ],
                ),
              ),

              //Plus button
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: const Icon(Icons.add, color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
