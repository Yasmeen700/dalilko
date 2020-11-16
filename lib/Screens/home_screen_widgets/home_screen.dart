import 'package:dalilko/Screens/home_screen_widgets/CustomSwiper.dart';
import 'package:dalilko/Screens/home_screen_widgets/custom_appbar.dart';
import 'package:dalilko/Screens/home_screen_widgets/icon_text_widget.dart';
import 'package:dalilko/Screens/home_screen_widgets/icons_bar.dart';
import 'package:dalilko/Screens/home_screen_widgets/search_bar_widget.dart';
import 'package:dalilko/constant/app_colors.dart';
import 'package:dalilko/constant/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                style: AppFonts.textStyleAmaranth1,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 12, bottom: 6),
                    child: Text(
                      'Choose your interest',
                      style: AppFonts.textStyleAmaranth2,
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
                  CustomSwiper(
                    imagePath: 'assets/images/مشتى-الحلو2.jpg',
                    title: '10 AMAZING DAYS IN SYRIA',
                    location: 'Golden Beach, Lattakia',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 24, left: 8, bottom: 6, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Places you should visit',
                          style: AppFonts.textStyleAmaranth2,
                        ),
                        Text(
                          'see more',
                          style: TextStyle(
                            color: AppColors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, left: 8, bottom: 6, right: 8),
                    child: Container(
                      height:( MediaQuery.of(context).size.width/3.3)-9,
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: constraints.maxHeight,
                                width: MediaQuery.of(context).size.width/3.3,
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/مشتى-الحلو2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              height: constraints.maxHeight,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alazem Palace',
                                    style: TextStyle(
                                      fontFamily: 'Calibri',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.black,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 7,
                                  // ),
                                  IconText(
                                    icon: Icons.apps,
                                    title: 'Minisries',
                                  ),
                                  // SizedBox(
                                  //   height: 6,
                                  // ),
                                  IconText(
                                    icon: Icons.remove_red_eye_sharp,
                                    title: '300',
                                  ),
                                  // SizedBox(
                                  //   height: 6,
                                  // ),
                                  IconText(
                                    icon: Icons.location_on,
                                    title: 'Damascus, old city',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: constraints.maxHeight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FlatButton(

                                    onPressed: (){print('33');},
                                    color: AppColors.primaryColor,

                                    shape: RoundedRectangleBorder(

                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: new Center(
                                      child: Container(
                                        // width: constraints.maxWidth/4.6,
                                        child: new Text(

                                          'view on map',
                                          style: new TextStyle(

                                              fontSize: 12.0,
                                              color: AppColors.secondaryColor),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
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
