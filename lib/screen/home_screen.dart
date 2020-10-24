import 'package:android/screen/signin_screen.dart';
import 'package:android/screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
          Text("You are in the Home Screen!", style:  TextStyle(fontSize: 20, color: Colors.pink),),
        ],
      ),
          SizedBox(height:16,),
          Container(
            height: 50,
            width: double.infinity,
            child: FlatButton(
              onPressed: ()  {
                FirebaseAuth.instance.signOut();

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
                  child: Text("Sign out", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), textAlign: TextAlign.center ,),
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
              ),
            ),
          ),

          Container(
            height: 50,
            width: double.infinity,
            child: FlatButton(
              onPressed: ()  {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()),
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
                  child: Text("Go To", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), textAlign: TextAlign.center ,),
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