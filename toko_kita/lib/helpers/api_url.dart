class ApiUrl {
  static const baseUrl = 'http://10.0.2.2/toko-api/public';

  static const registrasi = '$baseUrl/registrasi';
  static const login = '$baseUrl/login';
  static const listProduk = '$baseUrl/produk';
  static const createProduk = '$baseUrl/produk';

  static String updateProduk(int id) => '$baseUrl/produk/$id/update';

  static String showProduk(int id) => '$baseUrl/produk/$id';

  static String deleteProduk(int id) => '$baseUrl/produk/$id';
}