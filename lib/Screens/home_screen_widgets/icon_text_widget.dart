import 'package:dalilko/constant/app_colors.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon ;
  final String title;
  IconText({this.icon,this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,
          size: 15,
          color: AppColors.primaryColor,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Calibri',
              fontSize: 14,
              color: AppColors.black
          ),
        ),
      ],
    );
  }
}