import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ProductDetail({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Text('Kode Produk: ${widget.kodeProduk}'),
          Text('Nama Produk: ${widget.namaProduk}'),
          Text('Harga: ${widget.harga}'),
        ],
      ),
    );
  }
}
