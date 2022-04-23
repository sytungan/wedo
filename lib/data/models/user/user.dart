import 'package:wedo/data/models/user/token.dart';

class User {
  String? id;
  String? username;
  String? phone;
  String? email;
  String? avatar;
  String? displayName;
  String? lastName;
  String? firstName;
  String? gender;
  String? birthday;
  Token? token;

  User({
    this.id,
    this.phone,
    this.email,
    this.avatar,
    this.displayName,
    this.lastName,
    this.firstName,
    this.gender,
    this.birthday,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    username = json['username'];
    email = json['email'];
    avatar = json['avatar'];
    displayName = json['display_name'];
    lastName = json['last_name'];
    firstName = json['first_name'];
    gender = json['gender'];
    birthday = json['birthday'];
    token = Token.fromJson(json['token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['phone'] = phone;
    data['email'] = email;
    data['avatar'] = avatar;
    data['display_name'] = displayName;
    data['last_name'] = lastName;
    data['first_name'] = firstName;
    data['gender'] = gender;
    data['birthday'] = birthday;
    data['token'] = token?.toJson();
    return data;
  }
}
