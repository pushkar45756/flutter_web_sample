import 'package:flutter/material.dart';
import 'package:flutter_web_sample/widgets/custom_text.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: "Overview"),
    );
  }
}
