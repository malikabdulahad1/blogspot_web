import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int get selectedIndex => _selectedIndex.value;

  List<String> get menuItems => [
        "Home",
        "Contact",
        "Transactions",
        "profile",
        'About us',
        'Contact us',
      ];
  List<Icon> get menuIcons => [
        Icon(
          Icons.home,
          color: kPrimaryColor,
        ),
        Icon(Icons.message, color: kPrimaryColor),
        Icon(Icons.compare_arrows_outlined, color: kPrimaryColor),
        Icon(Icons.person, color: kPrimaryColor),
        Icon(Icons.info_outline, color: kPrimaryColor),
        Icon(Icons.group, color: kPrimaryColor)
      ];
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDraw() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    } else {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
