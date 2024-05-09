import 'package:flutter/material.dart';
import 'package:belajar_flutter/ui/product_detail.dart';

class PorductItem extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const PorductItem({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(
            kodeProduk: kodeProduk,
            namaProduk: namaProduk,
            harga: harga
          )),
        );
      }
    );
  }
}