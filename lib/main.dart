import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
