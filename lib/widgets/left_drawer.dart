import 'package:flutter/material.dart';
import 'package:hallu/screens/menu.dart';
import 'package:hallu/screens/shoplist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 186, 209),
            ),
            child: Column(
              children: [
                Text(
                  'Hallu!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kitto',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text(
              'Homieya',
              style: TextStyle(
                  fontFamily: 'Kitto'
              ),
            ),
            
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text(
              'Shoppeu',
              style: TextStyle(
                fontFamily: 'Kitto'
              ),
            ),
            
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopFormPage(),
                )
              );
            },
          ),
        ],
      ),
    );
  }
}