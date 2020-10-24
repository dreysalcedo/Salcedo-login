import 'package:android/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _auth = AuthService();
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
                Text("Sign in to continue!", style:  TextStyle(fontSize: 20, color: Colors.pink),),
              ],
            ),
            Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email ID",
                    labelStyle: TextStyle(fontSize: 14, color: Colors.pink),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey[400],
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey[400],
                        )
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 14, color: Colors.pink),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey[400],
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey[400],
                        )
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Align(
                    alignment: Alignment.topRight,
                    child: Text("Forgot Password?", style: TextStyle(fontSize: 14, color: Colors.pink, fontWeight: FontWeight.w600 ),)
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: (){},
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
                        child: Text("Login", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), textAlign: TextAlign.center ,),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                  ),
                ),
                SizedBox(height:16,),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () async{ dynamic result = await _auth.signInAnon();
                    if(result == null) {
                      print("Error Signing in");
                    } else {
                      print("Signed in");
                    }},
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
                        child: Text("Sign up", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold), textAlign: TextAlign.center ,),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                  ),
                ),
              ],

            )



          ],

        ),
      ),
    );
  }
}