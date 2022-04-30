import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user_model.dart';
import 'package:instagram_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user; //cannot be accessed in other classes as it is private
  final AuthMethods _authMethods = AuthMethods();

  User get getUser {
    //is used to access user in other classes as we cant directly access user as it is private
    return _user!;
  }

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
