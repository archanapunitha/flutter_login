import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin()
  ));
}

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
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
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login",style: TextStyle(
                    color: Colors.white,fontSize: 30,
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Welcome Back",style: TextStyle(
                      color: Colors.white,fontSize: 18,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(225, 95, 27, 53),
                                blurRadius: 20,
                                offset: Offset(0,10)
                              )],
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[200]
                                    )),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email or Phone Number",
                                    hintStyle: TextStyle(
                                      color: Colors.grey
                                    ),
                                    border: InputBorder.none

                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[200]
                                    )),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "PassWord",
                                    hintStyle: TextStyle(
                                      color: Colors.grey
                                    ),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
              ],
            ),
      ),
    );
  }
}


