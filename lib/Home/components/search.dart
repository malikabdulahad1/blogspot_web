import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/Home/components/sidebar_container.dart';
import 'package:news/constants.dart';

class search extends StatelessWidget {
  const search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sideBarContainer(title: 'Search', child:   TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            hintText: 'Type Here ...',
            suffixIcon: Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: SvgPicture.asset('assets/icons/feather_search.svg'),
            ),
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(kDefaultPadding)),
                borderSide: BorderSide(color: Color(0xFFCCCCCC)))),
      ),);
  }
}