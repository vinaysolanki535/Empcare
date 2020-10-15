import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login/home/home.dart';
import 'package:login/screens/chatbot.dart';
import 'package:login/screens/conference.dart';
import 'package:login/screens/request.dart';
import 'package:login/screens/task.dart';



class MainScreen extends StatefulWidget {



  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {



//Main Screen
  final List<Widget> _widgetOptions = <Widget>[
    //Home Page
    Home(),
    ChatBot(),
    Task(),
    Conference(),
    Request()
  ];

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  Future<bool> onBackPressed() async{

    if(_selectedIndex != 0)  {

      setState(() {
        _selectedIndex = 0;
      });
      return false;
    }
    else{

      return true;
    }

  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: onBackPressed,

      child: Scaffold(

        //Bottom Navigation Bar....
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.lightBlue,
          selectedLabelStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),
          unselectedItemColor:Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),
          showUnselectedLabels: true,
          currentIndex:  _selectedIndex,
          onTap: _onItemTapped,

          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home,),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label:"ChatBot",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.portrait),
              label:"Task",
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.videocam),
                label: "Conference"

            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label:"Request",
            ),
          ],
        ),

        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
