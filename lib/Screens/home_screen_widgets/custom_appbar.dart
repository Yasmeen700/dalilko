import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomAppBar extends PreferredSize {

  final double height;
  final List<Widget> leadings;
  final List<Widget> actions;

  CustomAppBar(
      {
        this.leadings = const [],
        this.actions = const [],
        this.height = 100,
      });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.transparent,
      // alignment: Alignment.center,
      child: SafeArea(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    top: 5,
                    bottom: 5,
                    child: Row(
                      children: leadings,
                    ),
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/logo_image.svg',
                      width: MediaQuery.of(context).size.width * 0.25,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 5,
                    bottom: 5,
                    child: Row(
                      children: actions,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}