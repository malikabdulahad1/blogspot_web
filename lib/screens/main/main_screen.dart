import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/Home/Home_Screen.dart';
import 'package:news/components/SideMenu.dart';
import 'package:news/components/header.dart';
import 'package:news/components/web_menu.dart';
import 'package:news/constants.dart';
import 'package:news/controller/MenuController.dart';

class MainScreen extends StatelessWidget {
    final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlackColor,
      key: _controller.scaffoldkey,
      drawer: sideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: HomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}

