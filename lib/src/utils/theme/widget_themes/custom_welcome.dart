import 'package:city_buddy/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            tWelcomeImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}
