import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text( "Flutter Demo",style: TextStyle(
        color: Colors.white,
      ),),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Text("Welcome...!"),
        ),
      ),
      
    );
  }
}
