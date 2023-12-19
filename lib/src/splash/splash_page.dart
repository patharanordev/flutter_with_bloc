import 'package:flutter/material.dart';
import 'package:flutter_with_bloc/src/splash/splash_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}
