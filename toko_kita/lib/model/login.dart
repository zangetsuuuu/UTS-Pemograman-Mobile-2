class Login {
  final int? code;
  final bool? status;
  final String? token;
  final int? userID;
  final String? userEmail;

  Login({
    this.code,
    this.status,
    this.token,
    this.userID,
    this.userEmail,
  });

  factory Login.fromJson(Map<String, dynamic> obj) {
    return Login(
      code: obj['code'],
      status: obj['status'],
      token: obj['data']['token'],
      userID: obj['data']['user']['id'],
      userEmail: obj['data']['user']['email'],
    );
  }
}
