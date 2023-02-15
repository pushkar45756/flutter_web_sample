import 'package:flutter/material.dart';
import 'package:flutter_web_sample/constants/controllers.dart';
import 'package:flutter_web_sample/constants/style.dart';
import 'package:flutter_web_sample/helpers/responsiveness.dart';
import 'package:flutter_web_sample/routing/routes.dart';
import 'package:flutter_web_sample/widgets/custom_text.dart';
import 'package:flutter_web_sample/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    const Padding(padding: EdgeInsets.only(right: 12)),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        color: active,
                        weight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 40),
          Divider(color: lightGrey.withOpacity(0.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((itemName) {
              return SideMenuItem(
                  itemName: itemName,
                  onTap: () {
                    if (itemName == authenticationPageRoute) {
                      // TODO:: go to Auth Page

                    }
                    if (!menuController.isActive(itemName)) {
                      menuController.changeActiveItemTo(itemName);
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                      }

                      // Goto Route Page
                      navController.navigateTo(itemName);
                    }
                  });
            }).toList(),
          )
        ],
      ),
    );
  }
}
