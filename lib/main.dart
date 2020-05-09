import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  TextEditingController emailController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();
  bool isLoading=false;
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
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    hintText: "Email or Phone Number",
                                    icon: Icon(Icons.email),
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
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    icon: Icon(Icons.lock),
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
                        SizedBox(
                          height: 40,
                        ),
                        Text("Forgot Password?",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: RaisedButton(
                            onPressed: (){
                              setState(() {
                                isLoading=true;
                              });
                              signIn(emailController.text,passwordController.text);
                            },
                            color: Colors.deepOrange[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text("Login",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Continue with Social Media",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: Text("Facebook",style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),),
                              ),
                            )
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text("GitHub",style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold),),
                              ),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ],
            ),
      ),
    );
  }
}

signIn(String email, String password) async {
  Map data={
    "email":email,
    "password":password,
  };
  var jsonData=null;
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  var response=await http.post("https://reqres.in/",body:data);
  if(response.statuscode==200){
    jsonData=jsonDecode(response.body);
    setState((){
      isLoading=false;
      sharedPreferences.setString("token", jsonData.body);
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context)=>HomePage()), (Route<dynamic>route)=>false);
    });
  }
  else{
    print(response.body);
  }

}


