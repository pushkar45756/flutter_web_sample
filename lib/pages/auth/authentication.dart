import 'package:flutter/material.dart';
import 'package:flutter_web_sample/widgets/custom_text.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: "Auth"),
    );
  }
}
