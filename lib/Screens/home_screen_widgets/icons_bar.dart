import 'package:dalilko/constant/app_colors.dart';
import 'package:dalilko/constant/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Color color = AppColors.secondaryColor ;
class IconWidget extends StatefulWidget {
  final IconData icon;

  final String text;

  IconWidget({this.icon, this.text});

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: GestureDetector(
        child: Container(
          // width: MediaQuery.of(context).size.width/5.2,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 6.2,
                width: MediaQuery.of(context).size.width / 6.2,
                decoration: BoxDecoration(
                  // border: Border.all(color:color),
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Icon(
                  widget.icon,
                  size: 30.0,
                  color: AppColors.secondaryColor,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4.5,
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  widget.text,
                  style: AppFonts.textStyleAmaranth3,
                ),
              ),
            ],
          ),
        ),
        // onTap: (){
        //   setState(() {
        //     color == AppColors.secondaryColor ;
        //   });
        // },
      ),
    );
  }
}

// class IconsBar  {
//   int _selectedIndex = 0;
//   List<IconData> _icons = [
//     Icons.home_repair_service,
//     Icons.restaurant_menu,
//     Icons.airplanemode_active,
//     Icons.car_rental,
//     Icons.medical_services,
//   ];
//   Widget _buildIcon(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index;
//         });
//       },

//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height:  MediaQuery.of(context).size.width*0.20,
//
//         child: ListView(
//           // shrinkWrap: false,
//           scrollDirection: Axis.horizontal,
//           children: _icons
//               .asMap()
//               .entries
//               .map(
//                 (MapEntry map) => _buildIcon(map.key),
//           )
//               .toList(),
//
//         ),
//       ),
//     );
//   }
//   }
