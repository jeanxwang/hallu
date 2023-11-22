import 'package:flutter/material.dart';
import 'package:hallu/screens/product_detail.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hallu/models/item.dart';
import 'package:hallu/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Future<List<Item>> fetchProduct() async {
    var url = Uri.parse('http://127.0.0.1:8000/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    var data = jsonDecode(utf8.decode(response.bodyBytes));

    List<Item> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Item.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(),
        builder: (context, AsyncSnapshot<List<Item>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error loading data'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "Tidak ada data produk.",
                style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  // Navigate to a new page with detailed information
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(
                        product: snapshot.data![index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.name}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.amount}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.description}")
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:hallu/models/product.dart';
// import 'package:hallu/widgets/left_drawer.dart';

// class ProductPage extends StatefulWidget {
//     const ProductPage({Key? key}) : super(key: key);

//     @override
//     _ProductPageState createState() => _ProductPageState();
// }

// class _ProductPageState extends State<ProductPage> {
// Future<List<Product>> fetchProduct() async {
//     var url = Uri.parse(
//         'http://127.0.0.1:8000/json/');
//     var response = await http.get(
//         url,
//         headers: {"Content-Type": "application/json"},
//     );

//     // melakukan decode response menjadi bentuk json
//     var data = jsonDecode(utf8.decode(response.bodyBytes));

//     // melakukan konversi data json menjadi object Product
//     List<Product> list_product = [];
//     for (var d in data) {
//         if (d != null) {
//             list_product.add(Product.fromJson(d));
//         }
//     }
//     return list_product;
// }

// @override
// Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: const Text('Product'),
//         ),
//         drawer: const LeftDrawer(),
//         body: FutureBuilder(
//             future: fetchProduct(),
//             builder: (context, AsyncSnapshot snapshot) {
//                 if (snapshot.data == null) {
//                     return const Center(child: CircularProgressIndicator());
//                 } else {
//                     if (!snapshot.hasData) {
//                     return const Column(
//                         children: [
//                         Text(
//                             "Tidak ada data produk.",
//                             style:
//                                 TextStyle(color: Color(0xff59A5D8), fontSize: 20),
//                         ),
//                         SizedBox(height: 8),
//                         ],
//                     );
//                 } else {
//                     return ListView.builder(
//                         itemCount: snapshot.data!.length,
//                         itemBuilder: (_, index) => Container(
//                                 margin: const EdgeInsets.symmetric(
//                                     horizontal: 16, vertical: 12),
//                                 padding: const EdgeInsets.all(20.0),
//                                 child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                     "${snapshot.data![index].fields.name}",
//                                     style: const TextStyle(
//                                         fontSize: 18.0,
//                                         fontWeight: FontWeight.bold,
//                                     ),
//                                     ),
//                                     const SizedBox(height: 10),
//                                     Text("${snapshot.data![index].fields.amount}"),
//                                     const SizedBox(height: 10),
//                                     Text(
//                                         "${snapshot.data![index].fields.description}")
//                                 ],
//                                 ),
//                             ));
//                     }
//                 }
//             }));
//     }
// }