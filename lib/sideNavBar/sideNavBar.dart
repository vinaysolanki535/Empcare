import 'package:flutter/material.dart';
import 'package:login/screens/chatbot.dart';
import 'package:login/screens/conference.dart';
import 'package:login/screens/feedback.dart';
import 'package:login/screens/request.dart';
import 'package:login/screens/task.dart';

class NavDrawer extends StatelessWidget {

  String Name , email;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Text(
                    "My Profile",
                    style: TextStyle(
                      fontFamily: "sf_pro_medium",
                      fontSize: 23
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                       backgroundColor: Colors.green,
                       // backgroundImage: AssetImage('images/batman.jpg'),
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text(
                            "Vinay Solanki",
                            style: TextStyle(
                                fontFamily: "sf_pro_medium",
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "vinaysolanki535@gmail.com",
                            style: TextStyle(
                              fontFamily: "sf_pro_medium",
                              fontSize: 12
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.question_answer , color: Colors.black,),
            title: Text(
                'ChatBot',
                style: TextStyle(
                  fontFamily: "sf_pro_medium",
                  color: Colors.black
                ),
            ),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatBot()))
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user , color: Colors.black,),
            title: Text('Task',style: TextStyle(fontFamily: "sf_pro_medium", color: Colors.black),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Task()))},
          ),
          ListTile(
            leading: Icon(Icons.videocam , color: Colors.black,),
            title: Text('Conference' , style: TextStyle(fontFamily: "sf_pro_medium", color: Colors.black),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Conference()))},
          ),
          ListTile(
            leading: Icon(Icons.message , color: Colors.black,),
            title: Text('Conference' , style: TextStyle(fontFamily: "sf_pro_medium", color: Colors.black),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => Request()))},
          ),
          ListTile(
            leading: Icon(Icons.border_color , color: Colors.black,),
            title: Text('Feedback', style: TextStyle(fontFamily: "sf_pro_medium", color: Colors.black),),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => FeedBack()))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app , color: Colors.black,),
            title: Text('Logout',style: TextStyle(fontFamily: "sf_pro_medium", color: Colors.black),),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}