import 'package:flutter/material.dart';
import 'package:flutter_web_sample/constants/controllers.dart';
import 'package:flutter_web_sample/routing/router.dart';
import 'package:flutter_web_sample/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navController.navigatorKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
