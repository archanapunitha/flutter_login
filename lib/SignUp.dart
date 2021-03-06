import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.deepOrange[800],
              Colors.deepOrange[600],
              Colors.deepOrange[400],
              Colors.deepOrange[300],
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Padding(
                padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Register Here",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(60))
                ),
                child: Padding(
                    padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "First Name",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),

                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),

                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                             child: Column(
                               children: <Widget>[
                                 
                               ],
                             ),

                             /* child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                                ),
                              ),*/
                            ),
                            Container(
                              padding: EdgeInsets.all(5),

                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Confirm Password ",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        child: RaisedButton(
                          onPressed: (){

                          },
                          color: Colors.deepOrange[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text("Register",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
