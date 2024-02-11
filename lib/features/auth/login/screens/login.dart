import 'package:flutter/material.dart';
import 'package:travel/features/auth/login/provider/login_provider.dart';
import 'package:travel/features/auth/signup/screens/signup.dart';
import 'package:travel/utils/global_widgets/baseScaffold.dart';
import 'package:travel/utils/constants/box_constants.dart';
import 'package:travel/utils/constants/textstyles.dart';
import 'package:travel/utils/global_widgets/primary_button.dart';
import 'package:travel/utils/global_widgets/textfield.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Consumer<LoginProvider>(builder: (_, provider, __) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome!', style: TT.f28w600),
              Box.box24h,
              CustomTextField(
                controller: _emailController,
                labelText: 'Email Id',
                inputType: TextInputType.emailAddress,
                validator: (v) => provider.verifyEmail(v ?? ""),
              ),
              Box.box16h,
              CustomTextField(
                controller: _passwordController,
                labelText: 'Password',
                validator: (v) => provider.verifyPassword(v ?? ""),
              ),
              Box.box24h,
              PrimaryButton(
                  label: 'Login',
                  isLoading: provider.isLoading,
                  onTap: () {
                    provider.login(
                        _emailController.text, _passwordController.text, context);
                  }),
              Box.box24h,
              const Text(
                "Don't Have An Account?",
                style: TT.f16w400,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_) => SignupScreen()),(route) => false,);
                  },
                  child: const Text('Create Account'))
            ],
          ),
        );
      }),
    );
  }
}
