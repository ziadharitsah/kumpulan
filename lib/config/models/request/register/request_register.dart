import 'dart:convert';

RequestRegister requestRegisterFromMap(String str) =>
    RequestRegister.fromMap(json.decode(str));

String requestRegisterToMap(RequestRegister data) => json.encode(data.toMap());

class RequestRegister {
  String? name;
  String? email;
  String? password;
  String? passwordConfirmation;

  RequestRegister({
    this.name,
    this.email,
    this.password,
    this.passwordConfirmation,
  });

  factory RequestRegister.fromMap(Map<String, dynamic> json) => RequestRegister(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        passwordConfirmation: json["password_confirmation"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": passwordConfirmation,
      };
}
