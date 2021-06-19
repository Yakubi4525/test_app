import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:test_app/models/user.dart';

class LocalService {
  static SharedPreferences _preferences;

  static const _keyAllUsers = 'users';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  Future setAllusers(List<User> userList) async {
    var list = userList.map((user) => jsonEncode(user)).toList();
    await _preferences.setStringList(_keyAllUsers, list);
  }

  Future<List<User>> getAllusers() async {
    _preferences = await SharedPreferences.getInstance();
    var stringList = await _preferences.getStringList(_keyAllUsers);
    if (stringList == null) {
      return null;
    }
    var list = stringList.map((user) => jsonDecode(user)).toList();
    List<User> userList = list.map((e) => User.fromJson(e)).toList();
    return userList;
  }
}
