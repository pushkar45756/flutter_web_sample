import 'package:flutter/material.dart';
import 'package:flutter_web_sample/widgets/custom_text.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: "Driver"),
    );
  }
}
