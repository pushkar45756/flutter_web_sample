import 'package:flutter/material.dart';
import 'package:flutter_web_sample/helpers/responsiveness.dart';
import 'package:flutter_web_sample/widgets/large_screen.dart';
import 'package:flutter_web_sample/widgets/side_menu.dart';
import 'package:flutter_web_sample/widgets/small_screen.dart';
import 'package:flutter_web_sample/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});

  @override
  GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: topNavigation(
        context,
        globalKey,
      ),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: null,
      ),
    );
  }
}
