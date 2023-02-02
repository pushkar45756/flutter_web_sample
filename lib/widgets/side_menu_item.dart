import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_web_sample/helpers/responsiveness.dart';
import 'package:flutter_web_sample/widgets/horizontal_menu_item.dart';
import 'package:flutter_web_sample/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustommScreen(context)) {
      return VerticalMenuItem(item: itemName, onTap: onTap);
    }
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
