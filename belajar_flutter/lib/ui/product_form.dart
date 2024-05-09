import 'package:flutter/material.dart';
import 'package:belajar_flutter/ui/product_detail.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxProductCode(),
            _textboxProductName(),
            _textboxProductPrice(),
            _saveButton(),
          ],
        ),
      ),
    );
  }

  Widget _textboxProductCode() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Kode produk'),
      controller: _kodeProdukTextboxController,
    );
  }

  Widget _textboxProductName() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Nama produk'),
      controller: _namaProdukTextboxController,
    );
  }

  Widget _textboxProductPrice() {
    return TextField(
      decoration: const InputDecoration(labelText: 'Harga'),
      controller: _hargaProdukTextboxController,
    );
  }

  Widget _saveButton() {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetail(
            kodeProduk: kodeProduk,
            namaProduk: namaProduk,
            harga: harga,
          ),
        ));
      },
      child: const Text('Simpan'),
    );
  }
}
