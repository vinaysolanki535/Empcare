import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/bottomNavigationbar/bottombar.dart';
import 'package:login/sideNavBar/sideNavBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
        // body
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                 color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    color: Colors.white,
                     alignment: Alignment.topCenter,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 150,
                          width: 220,
                        ),
                        SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 150,
                          width: 220,
                        ),
                        SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 150,
                          width: 220,
                        ),
                        SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 150,
                          width: 220,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),
                // recently added container
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Assigned",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15
                      ),
                    ),
                    Icon(
                      Icons.wrap_text,

                    )
                  ],
                ),
              ),

              SizedBox(height: 30,),

              // task assigned

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
