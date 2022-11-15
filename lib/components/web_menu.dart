import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/SliverGradient.dart';
import 'package:news/constants.dart';
import 'package:news/controller/MenuController.dart';

class WebMenu extends StatelessWidget {
 
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
      padding: const EdgeInsets.only(right: kMaxWidth /2),
      child: Row(
        children: List.generate(_controller.menuItems.length, (index) => WebMenuItem(
          text: _controller.menuItems[index],
          isActive: index==_controller.selectedIndex,
          press: () => _controller.setMenuIndex(index),
        ))
      ),
    ),);
  }
}

class WebMenuItem extends StatefulWidget {
  @required
  final bool isActive;
  @required
  final String text;
  @required
  final VoidCallback press;

  WebMenuItem({this.isActive, this.text, this.press});

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;
  Color _borderColor(){
    if (widget.isActive) {
      return kPrimaryColor;
    } else if(!widget.isActive & _isHover){
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }
  Color _TextColor(){
    if (widget.isActive) {
      return kPrimaryColor;
    } else if(!widget.isActive & _isHover){
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.white;
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      // onHover: (value) {
      //  setState(() {
      //     _isHover = value;
      //  });
      // },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: _borderColor(),
                    width: 3))),
        child: silverGradient(widget.text, 20,)
        
      ),
    );
  }
}
