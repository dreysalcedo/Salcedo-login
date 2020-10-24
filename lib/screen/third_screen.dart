import 'package:android/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}


class _ThirdScreenState extends State<ThirdScreen> {
  @override
 Widget build(BuildContext context){
    return Scaffold(
  backgroundColor: Colors.black,
        body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
    child: Column(
    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
    SizedBox(height: 50,),
    Text("Welcome,", style: TextStyle(fontSize: 26, fontWeight:  FontWeight.bold, color: Colors.pink),),
    SizedBox(height: 6, ),
    Text("You are in the Third Screen!", style:  TextStyle(fontSize: 20, color: Colors.pink),),
    ],
    ),

      Container(
        height: 50,
        width: double.infinity,
        child: FlatButton(
          onPressed: ()  {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient:  LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffff5f6d),
                    Color(0xffff5f6d),
                    Color(0xffffc371),
                  ]
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              constraints:  BoxConstraints(maxWidth: double.infinity, minHeight: 50),
              child: Text("Go Back", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), textAlign: TextAlign.center ,),
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
          ),
        ),
      ),
          ]
        ),
    ),






);
  }
}