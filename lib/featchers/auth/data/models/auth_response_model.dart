// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app2/featchers/auth/data/models/user_model.dart';

class AuthResponseModel {
  final String token;
  final String role;
  final UserModel user;

  AuthResponseModel({
    required this.token,
    required this.role,
    required this.user,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> map) {
    return AuthResponseModel(
      token: map['token']?.toString() ?? '',
      role: map['role']?.toString() ?? '',
      user: UserModel.fromMap(map['user'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'token': token,
      'role': role,
      'user': user.toMap(),
    };
  }
}
