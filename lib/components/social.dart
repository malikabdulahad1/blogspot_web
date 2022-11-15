import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/constants.dart';
import 'package:news/responsive.dart';

class social extends StatelessWidget {
  const social({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // if (!Responsive.isMobile(context))
        //   SvgPicture.asset('assets/icons/behance-alt.svg'),
        // if (!Responsive.isMobile(context))
        //   Padding(
        //     padding:
        //         const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        //     child: SvgPicture.asset('assets/icons/feather_dribbble.svg'),
        //   ),
        // if (!Responsive.isMobile(context))
        //   SvgPicture.asset('assets/icons/feather_twitter.svg'),
        // SizedBox(
        //   width: kDefaultPadding,
        // ),
     Responsive.isMobile(context)? ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: kDarkBlackColor,
                padding: EdgeInsets.symmetric(
                   // horizontal: kDefaultPadding * 1.5,
                    vertical: kDefaultPadding / (Responsive.isDesktop(context)? 1:2 ))),
            child: Icon(Icons.search)):Container()
      ],
    );
  }
}
