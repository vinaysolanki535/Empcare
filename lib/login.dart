import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/services/auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();
  AuthMethod authMethod = new AuthMethod();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(

        child: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  "WELCOME !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'sf_pro_semi_bold',

                  ),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.380,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
              ),
            ),

            // login Box

            Center(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50,),
                    Text(
                     "LOG IN TO YOUR ACCOUNT",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "sf_pro_regular",
                        fontSize: 15
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (val) {
                                return val.isEmpty ? "this is a not valid email" : null;
                              },
                              controller: emailTextEditingController,
                              decoration: InputDecoration(
                                hintText: "Email",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                  )
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              validator: (val) {
                                return val.isEmpty ? "this is a not valid password" : null;
                              },
                              controller: passwordTextEditingController,
                              decoration: InputDecoration(
                                hintText: "Password",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                  )
                              ),

                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                               Text(
                                 "Remember me",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontFamily: "sf_pro_bold",
                                   fontSize: 13
                                 ),
                               ),
                                //SizedBox(width: 60,),
                                Text(
                                  "Forgot your password ?",
                                  style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontFamily: "sf_pro_bold",
                                      fontSize: 11
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 80),
                height: 430,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5
                  ),]
                ),
              ),
            ),

            // circle on login Box
            Container(
              margin: EdgeInsets.only(top: 500),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,),
                ),
                margin: EdgeInsets.all(70),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurpleAccent,

                ),
              ),
            )
          ],
        ),

      ),


    );
  }
}
