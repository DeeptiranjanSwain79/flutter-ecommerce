import 'package:ecommerce/pages/home.page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 120.0),
            child: Image.asset(
              'lib/images/nikelogo.png',
              height: 240,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Just Do it',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Brand new sneakers and custom kicks made with premium quality',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12)),
              // padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
