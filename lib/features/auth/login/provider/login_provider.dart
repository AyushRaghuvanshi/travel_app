import 'package:flutter/material.dart';
import 'package:travel/features/home/screens/home_screen.dart';
import 'package:travel/repositories/firebase/firebase_auth.dart';
import 'package:travel/utils/helpers/base_provider.dart';

class LoginProvider extends BaseViewModel {
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
  googleSignin(BuildContext context) async {
    try {
      final user = await auth.signInWithGoogle();
      if (user != null) {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => HomeScreen()), (route) => false);
      }
    } catch (e) {
      print(e);
    }
  }
  login(String email, String password, BuildContext context) async {
    try {
      setLoading(true);
      if (verifyEmail(email) != null && verifyPassword(password) != null) {
        return;
      }
      await auth.login(email, password);
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>HomeScreen()), (route) => false);
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
