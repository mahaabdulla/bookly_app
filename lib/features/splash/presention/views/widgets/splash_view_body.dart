import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // streach cuz i wana take all width of screen
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: 200),
        Image.asset(AssetsData.logo),
        const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
