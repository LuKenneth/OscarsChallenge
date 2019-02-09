// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'model/classes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  var user;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/oscar.png',
                height: 100,
                fit: BoxFit.contain),
                SizedBox(height: 16.0),
                Text('OSCAR CHALLENGE 2019'),
              ],
            ),
            SizedBox(height: 80.0),
            RaisedButton(
              child: Text('Sign In With Google'),
              onPressed: () {
                User("luke.k.patterson@gmail.com");
                Navigator.pop(context);
                // _handleSignIn(context);
              },
            ),
          ],
        ),
      ),
    );
  }


  Future<String> _handleSignIn(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    GoogleSignInAccount googleUser;

    if(user == null) {
      try {
        googleUser = await _googleSignIn.signIn();
      }
      catch(error) {
        print(error);
      }

    prefs.setString('user', googleUser.email);
    User(googleUser.email);
    Navigator.pop(context);
    return googleUser.email;
      
    } 
    Navigator.pop(context);
    return user;
    
  }

  Future<String> checkForUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String user = prefs.get('user');
    return user != null ? user : '';
  }

}