import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class NavigationController extends GetxController {
  static final NavigationController instance = Get.find();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<dynamic> navigateTo(route) {
    return navigatorKey.currentState!.pushNamed(route);
  }

  goBack() => navigatorKey.currentState!.pop();
}
