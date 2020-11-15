import 'package:flutter/material.dart';

import 'Screens/home_screen_widgets/home_screen.dart';

void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dalilko app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffE74646),
        accentColor: Color(0xffffffff),
        scaffoldBackgroundColor: Color(0xffE74646),
      ),
      home: HomeScreen(),
    );
  }
}
