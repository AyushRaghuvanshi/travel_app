import 'package:flutter/material.dart';
import 'package:travel/utils/global_widgets/logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Logo(),),
    );
  }
}