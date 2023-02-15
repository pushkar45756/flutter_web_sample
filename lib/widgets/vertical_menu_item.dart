import 'package:flutter/material.dart';
import 'package:flutter_web_sample/constants/style.dart';
import 'package:flutter_web_sample/widgets/custom_text.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../constants/controllers.dart';

class VerticalMenuItem extends StatelessWidget {
  final String item;
  final Function() onTap;
  const VerticalMenuItem({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(item)
            : menuController.onHover('not hovering');
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(item)
              ? lightGrey.withOpacity(0.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(item) ||
                    menuController.isActive(item),
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: dark,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnIconFor(item),
                    ),
                    if (!menuController.isActive(item))
                      Flexible(
                        child: CustomText(
                          text: item,
                          color: menuController.isHovering(item)
                              ? dark
                              : lightGrey,
                          size: 20,
                          weight: FontWeight.normal,
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: item,
                          color: dark,
                          size: 18,
                          weight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
