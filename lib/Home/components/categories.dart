import 'package:flutter/material.dart';
import 'package:news/Home/components/sidebar_container.dart';
import 'package:news/constants.dart';

class categories extends StatelessWidget {
  const categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sideBarContainer(title: 'Categories', child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        category(title: 'Artifical Intelligence', numOfItems: 3, press: (){},),
        category(title: 'Flutter UI', numOfItems: 10, press: (){},),
        category(title: 'Android Development', numOfItems: 33, press: (){},),
        category(title: 'Python', numOfItems: 9, press: (){},),
        category(title: 'C Language', numOfItems: 322, press: (){},),

      ],
    ));
  }
}

class category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  const category({
    Key key, @required this.title, @required this.numOfItems, @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(onPressed: () {
        
      }, child: Text.rich(TextSpan(
        text: title,
        style: TextStyle(color: kDarkBlackColor,), children: [
          TextSpan(text: ' ($numOfItems)', style: TextStyle(color: kDarkBlackColor)),
        ]
      ))),
    );
  }
}



