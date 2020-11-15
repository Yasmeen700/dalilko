import 'package:dalilko/Screens/home_screen_widgets/custom_appbar.dart';
import 'package:dalilko/Screens/home_screen_widgets/icons_bar.dart';
import 'package:dalilko/Screens/home_screen_widgets/search_bar_widget.dart';
import 'package:dalilko/constant/app_colors.dart';
import 'package:dalilko/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ScrollController _controller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadings: [
          IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: AppColors.secondaryColor,
                size: 30,
              ),
              onPressed: null),
        ],
        actions: [
          IconButton(
              icon: Icon(
                Icons.search_rounded,
                color: AppColors.secondaryColor,
                size: 30,
              ),
              onPressed: null),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
            child: Text(
              'Where would you like to go?',
              style: AppFonts.textStyle1,
            ),
          ),
          SearchBar(),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              // controller: _controller,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 12, bottom: 6),
                  child: Text(
                    'Choose your interest',
                    style: AppFonts.textStyle2,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      IconWidget(
                        icon: Icons.home_repair_service,
                        text: 'Public Services',
                      ),
                      IconWidget(
                        icon: Icons.restaurant_menu,
                        text: 'Restaurants &Cafe',
                      ),
                      IconWidget(
                        icon: Icons.airplanemode_active,
                        text: 'Tourism',
                      ),
                      IconWidget(
                        icon: Icons.car_rental,
                        text: 'Cars& Vehicles',
                      ),
                      IconWidget(
                        icon: Icons.medical_services,
                        text: 'Health& Medicine',
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.purple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/مشتى-الحلو2.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text('data',
                            style: AppFonts.textFieldStyle,),
                          ),
                        ],
                      );
                    },
                    itemCount: 10,
                    viewportFraction: 0.75,
                    scale: 0.9,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
