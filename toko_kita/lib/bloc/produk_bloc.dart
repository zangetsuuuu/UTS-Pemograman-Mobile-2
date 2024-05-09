import 'dart:convert';

import 'package:toko_kita/helpers/api.dart';
import 'package:toko_kita/helpers/api_url.dart';
import 'package:toko_kita/model/produk.dart';

class ProdukBloc {
  static Future<List<Produk>> getProduks() async {
    final apiUrl = ApiUrl.listProduk;
    final response = await Api().get(apiUrl);
    final jsonObj = json.decode(response.body);
    final listProduk = (jsonObj as Map<String, dynamic>)['data'];

    final produks = <Produk>[];
    for (final item in listProduk) {
      produks.add(Produk.fromJson(item));
    }

    return produks;
  }

  static Future<bool> addProduk({required Produk produk}) async {
    final apiUrl = ApiUrl.createProduk;

    final body = {
      'kode_produk': produk.kodeProduk,
      'nama_produk': produk.namaProduk,
      'harga': produk.hargaProduk.toString(),
    };

    final response = await Api().post(apiUrl, body);
    final jsonObj = json.decode(response.body);

    return jsonObj['status'];
  }

  static Future<bool> updateProduk({required Produk produk}) async {
    final apiUrl = ApiUrl.updateProduk(produk.id!);

    final body = {
      'kode_produk': produk.kodeProduk,
      'nama_produk': produk.namaProduk,
      'harga': produk.hargaProduk.toString(),
    };

    final response = await Api().post(apiUrl, body);
    final jsonObj = json.decode(response.body);

    return jsonObj['data'];
  }

  static Future<bool> deleteProduk({required int id}) async {
    final apiUrl = ApiUrl.deleteProduk(id);

    final response = await Api().delete(apiUrl);
    final jsonObj = json.decode(response.body);

    return jsonObj['data'];
  }
}
