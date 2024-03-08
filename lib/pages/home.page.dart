import 'package:ecommerce/components/bottom.nav.bar.dart';
import 'package:ecommerce/pages/cart.page.dart';
import 'package:ecommerce/pages/intro.page.dart';
import 'package:ecommerce/pages/shop.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            //Logo
            DrawerHeader(
              child: Image.asset(
                'lib/images/nikelogo.png',
                color: Colors.white,
              ),
            ),
            //Other pages

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()))
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()))
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntroPage()))
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
