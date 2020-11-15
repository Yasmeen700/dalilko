import 'package:dalilko/constant/app_colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFonts {
  AppFonts._();
static const textStyle1 =TextStyle(
    color: AppColors.secondaryColor,
    fontSize: 28,
    fontFamily: 'Amaranth',
    fontWeight: FontWeight.w500);
static const hintStyle=TextStyle(
    color: Colors.white70,
    fontFamily: 'Amaranth',
    fontWeight: FontWeight.w400);
static const textFieldStyle=TextStyle(
    color: Colors.white,
    fontFamily: 'Amaranth',
    fontWeight: FontWeight.w400);
  static const textStyle2 = TextStyle(
    color: Color(0xff4A4A4A),
    fontFamily: 'Amaranth',
    fontSize: 16,
  );
  static const textStyle3 = TextStyle(
    color:AppColors.primaryColor,
    fontFamily: 'Amaranth',
    fontSize: 16,
  );

}