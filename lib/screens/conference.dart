import 'package:flutter/material.dart';
import 'package:login/sideNavBar/sideNavBar.dart';

class Conference extends StatefulWidget {
  @override
  _ConferenceState createState() => _ConferenceState();
}

class _ConferenceState extends State<Conference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.contain,
              height: 32,
            ),
            SizedBox(width: 65,),
            Icon(
                Icons.notifications
            )
          ],
        ),
        elevation: 0.0,
      ),


      body: Container(
        child: Column(
          children: [
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.videocam,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "Video Conference",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "sf_pro_medium",
                        fontSize: 12
                    ),
                  )
                ],
              ),
            ),


            Container(
              height: 60,
              margin: EdgeInsets.symmetric( horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "voice Conference",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "sf_pro_medium",
                        fontSize: 12
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
