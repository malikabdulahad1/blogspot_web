import 'package:flutter/material.dart';
import 'package:news/Home/components/sidebar_container.dart';
import 'package:news/constants.dart';

class RecentPost extends StatelessWidget {
  const RecentPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sideBarContainer(
        title: 'Recent Post',
        child: Column(
          children: [
            RecentPostCard(
              image: 'assets/images/recent_1.png',
              title: "Our Secrete formula to online Workshops",
              press: () {},
            ),
            SizedBox(height: kDefaultPadding,),
            RecentPostCard(
              image: 'assets/images/recent_2.png',
              title: "Digital Product Innovation from warsaw with love",
              press: () {},
            )
          ],
        ));
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;
  const RecentPostCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
                flex: 3,
                child: Text(
                  
                  title,
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: "Raleway",
                      color: kDarkBlackColor,
                      fontWeight: FontWeight.bold,
                      height: 1.5),
                ))
          ],
        ),
      ),
    );
  }
}
