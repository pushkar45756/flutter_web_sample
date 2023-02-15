import 'package:flutter/material.dart';
import 'package:flutter_web_sample/constants/style.dart';
import 'package:flutter_web_sample/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overViewPageRoute.obs;
  var hoverItem = ''.obs;

  changeActiveItemTo(item) {
    activeItem = item;
    refresh();
  }

  onHover(item) {
    if (!isActive(item)) hoverItem.value = item;
  }

  isActive(item) => activeItem.value == item;

  isHovering(item) => activeItem.value == item;

  Widget returnIconFor(item) {
    switch (item) {
      case overViewPageRoute:
        return _customIcon(Icons.trending_up, item);
      case driverPageRoute:
        return _customIcon(Icons.drive_eta, item);
      case clientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, item);
      case authenticationPageRoute:
        return _customIcon(Icons.exit_to_app, item);
      default:
        return _customIcon(Icons.exit_to_app, item);
    }
  }

  Widget _customIcon(icon, item) {
    if (isActive(item)) {
      return Icon(icon, size: 22, color: dark);
    }

    return Icon(icon, color: isHovering(item) ? dark : lightGrey);
  }
}
