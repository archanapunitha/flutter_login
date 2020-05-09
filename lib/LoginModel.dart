class LoginModel{
  final String token;

  LoginModel({this.token});

  factory LoginModel.fromJson(final json){
    return LoginModel(
      token: json["token"]
    );
  }
}