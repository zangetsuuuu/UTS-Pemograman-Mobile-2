import 'package:flutter/material.dart';
import 'package:belajar_flutter/ui/product_form.dart';
import 'package:belajar_flutter/ui/product_item.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data produk'),
        backgroundColor: Colors.amber,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductForm()),
                );
              },
            ),
          ),
        ],
      ),

      body: ListView(children: const [
        PorductItem(
          kodeProduk: 'A001',
          namaProduk: 'Kulkas',
          harga: 1200000,
        ),
        PorductItem(
          kodeProduk: 'A002',
          namaProduk: 'TV',
          harga: 2000000,
        ),
        PorductItem(
          kodeProduk: 'A003',
          namaProduk: 'Kompor',
          harga: 1000000,
        ),
      ]),
    );
  }
}
