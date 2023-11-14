import 'package:flutter/material.dart';
import 'package:hallu/screens/shoplist_form.dart';
import 'package:hallu/screens/menu.dart';

class ShopCard extends StatelessWidget {
  final Item item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 228, 65, 119),
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("You have clicked ${item.name}!",
                style: const TextStyle(
                  fontFamily: 'Cushion'
                ),)));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Add Item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShopFormPage(),
              )
            );
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kitto'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
