import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:news/SliverGradient.dart';
import 'package:news/constants.dart';

import '../controller/MenuController.dart';

class sideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: kDarkBlackColor,
          child: Obx(
            () => ListView(
              children: [
                DrawerHeader(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3.5),
                  child: Image.asset(
                    'assets/images/logo.png',
                    scale: 3,
                  ),
                )),
                ...List.generate(
                    _controller.menuItems.length,
                    (index) => DrawerTitle(
                          isActive: index == _controller.selectedIndex,
                          title: _controller.menuItems[index],
                          menuIcon: _controller.menuIcons[index],
                          press: () {
                            _controller.setMenuIndex(index);
                          },
                        ))
              ],
            ),
          )),
    );
  }
}

class DrawerTitle extends StatelessWidget {
  final String title;
  final Icon menuIcon;
  final bool isActive;
  final VoidCallback press;
  const DrawerTitle({
    Key key,
    @required this.title,
    @required this.isActive,
    @required this.press,
    @required this.menuIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        contentPadding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        title: silverGradient(title, 20),
        leading: menuIcon,
        onTap: press);
  }
}
