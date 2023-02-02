import 'package:flutter/material.dart';
import 'package:flutter_web_sample/helpers/local_navigators.dart';
import 'package:flutter_web_sample/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SideMenu(),
        ),
        Expanded(
          flex: 5,
          child: localNavigator(),
        )
      ],
    );
  }
}
