import 'package:dalilko/constant/app_colors.dart';
import 'package:dalilko/constant/fonts.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 8, top: 16, bottom: 24, right: 8),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.82,
            height: 40,
            child: TextField(
              textAlign: TextAlign.left,
              style: AppFonts.textFieldStyle,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 0, horizontal: 10),
                hintText: 'Find your place...',
                hintStyle: AppFonts.hintStyle,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                fillColor: Colors.white24,
                filled: true,
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.search_rounded,
                  color: AppColors.primaryColor,
                  size: 30,
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
