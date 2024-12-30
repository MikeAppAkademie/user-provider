import 'package:flutter/material.dart';
import 'package:user_provider/model/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(name: 'Dirk', age: 25);

  User get user => _user;

  void update({
    required String newName,
    required int newAge,
  }) {
    _user.name = newName;
    _user.age = newAge;
  }
}
