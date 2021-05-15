import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:Container(
          decoration:BoxDecoration(
            image:DecorationImage(
              image:AssetImage("lib/img/app img.jpeg"),
              fit:BoxFit.fill,
            ),
                border: Border(
                  bottom: BorderSide(width:2.0,color:Colors.black),
                )
          )
        ),
        centerTitle: true,
        title:Text('REMINDER',
          style: TextStyle(
            color:Colors.black,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
        )
      ),
      body: Stack(
        children:[
          Image.asset("lib/img/bg.jpeg",
            width:double.infinity,
            height: double.infinity,
            fit:BoxFit.fill,
          ),
          Positioned(
            top:10,
            right:45,
            child: Container(
              padding:EdgeInsets.all(10),
              child: Text(
                "Mark a date to remember",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Rosario',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}