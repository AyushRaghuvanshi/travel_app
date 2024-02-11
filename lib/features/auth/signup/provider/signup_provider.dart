import 'package:flutter/material.dart';
import 'package:travel/repositories/firebase/firebase_auth.dart';
import 'package:travel/utils/helpers/base_provider.dart';

class SignupProvider extends BaseViewModel {
  AuthHelper auth = AuthHelper();

  String? verifyEmail(String email) {
    if (email.isEmpty) {
      return 'Email Can\'t be Empty';
    }
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    if (emailRegex.hasMatch(email)) {
      return null;
    } else {
      return 'Invalid Email';
    }
  }

  String? verifyPassword(String password) {
    if (password.length >= 8) {
      return null;
    } else {
      return 'Weak Password';
    }
  }

    signup(String email, String password, BuildContext context) async {
    try {
      setLoading(true);
      if (verifyEmail(email) != null && verifyPassword(password) != null) {
        return;
      }
      await auth.signup(email, password);
      setLoading(false);
    } catch (e) {
     
      if (context.mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
       setLoading(false);
    }
  }
}
