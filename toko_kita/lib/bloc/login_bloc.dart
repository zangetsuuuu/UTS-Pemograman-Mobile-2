import 'dart:convert';
import 'package:toko_kita/helpers/api.dart';
import 'package:toko_kita/helpers/api_url.dart';
import 'package:toko_kita/model/login.dart';

class LoginBloc {
  static Future<Login> login({required String email, required String password}) async {
    final apiUrl = ApiUrl.login;
    final body = {'email': email, 'password': password};
    final response = await Api().post(apiUrl, body);
    final jsonObj = json.decode(response.body);
    return Login.fromJson(jsonObj);
  }
}
