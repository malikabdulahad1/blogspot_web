import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Expanded(
        //     flex: 2,
        //     child: Column(
        //         children: List.generate(
        //             blogPosts.length,
        //             (index) => BlogspotCard(
        //                   blog: blogPosts[index],
        //                 )))),
       if(!Responsive.isMobile(context))  SizedBox(
          width: kDefaultPadding,
        ),
      // if(!Responsive.isMobile(context))  Expanded(
      //       child: Column(
      //     children: [
      //       search(),
      //       SizedBox(
      //         height: kDefaultPadding,
      //       ),
      //       categories(),
      //       SizedBox(
      //         height: kDefaultPadding,
      //       ),
      //       RecentPost()
      //     ],
      //   ))
      ],
    );
  }
}

