import 'package:flutter/material.dart';
import 'package:travel_app/screen/home_screen/home_screen.dart';

/// @author : Mehrdad HosseinNejad
/// Email : hosseinnejad74@gmail.com
/// Project : Travel App
/// Date : 09/02/2020

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: Color(0xffF5F5F5),
      ),
      home: HomeScreen(),
    );
  }
}
