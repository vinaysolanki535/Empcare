import 'package:flutter/material.dart';
import 'package:login/bottomNavigationbar/bottombar.dart';
import 'package:login/home/home.dart';
import 'package:login/login.dart';
import 'package:login/screens/chatbot.dart';
import 'package:login/screens/conference.dart';
import 'package:login/screens/feedback.dart';
import 'package:login/screens/request.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.white,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FeedBack()
    );
  }
}

