import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/components/social.dart';
import 'package:news/components/web_menu.dart';
import 'package:news/constants.dart';
import 'package:news/controller/MenuController.dart';
import 'package:news/responsive.dart';

class Header extends StatelessWidget {
  Header({
    Key key,
  }) : super(key: key);

  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: kDarkBlackColor,
        child: SafeArea(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Row(
                children: [
                  if (!Responsive.isDesktop(context))
                    IconButton(
                        onPressed: () {
                          _controller.openOrCloseDraw();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? Image.asset(
                          'assets/images/logoWeb.png',
                          scale: 2,
                        )
                      : Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                  Spacer(),
                  if (Responsive.isDesktop(context)) WebMenu(),
                  Spacer(),
                  social()
                ],
              ),
            ),
            //     SizedBox(
            //       height: kDefaultPadding * 2,
            //     ),
            //     Text(
            //       'Welcome to Our Blog',
            //       style: TextStyle(
            //           fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            //       child: Text(
            //         'Stay updated with the newest design and development stories, case studies ;\n and insight shared by DesignDK Team',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //             color: Colors.white, fontFamily: 'Raleway', height: 1.5),
            //       ),
            //     ),
            //     FittedBox(
            //       child: TextButton(
            //           onPressed: () {},
            //           child: Row(
            //             children: [
            //               Text(
            //                 'Learn More',
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.bold, color: Colors.white),
            //               ),
            //               SizedBox(width: kDefaultPadding / 2),
            //               Icon(
            //                 Icons.arrow_forward,
            //                 color: Colors.white,
            //               )
            //             ],
            //           )),
            //     ),
            //     if (Responsive.isDesktop(context))
            //       SizedBox(
            //         height: kDefaultPadding,
            //       )
            //   ],
            // )
          ]),
        ));
  }
}
