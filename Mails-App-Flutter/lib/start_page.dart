import 'package:flutter/material.dart';
import 'package:mail_app/profile/profile_data.dart';

import 'home.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/create account.jpg',
                    width: 130, height: 130, fit: BoxFit.fill),
                Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                TextField(
                  cursorColor: Colors.pinkAccent,
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    prefixIcon: Icon(Icons.drive_file_rename_outline,
                        color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(color: Colors.grey, width: 3.0),
                    ),
                  ),
                  onSubmitted: (text) {
                    ProfileData.userName = text;
                  },
                ),
                TextField(
                  cursorColor: Colors.pinkAccent,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3.0,
                      ),
                    ),
                  ),
                  onSubmitted: (text) {
                    ProfileData.userEmail = text;
                  },
                ),
                TextField(
                  cursorColor: Colors.pinkAccent,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide:
                          BorderSide(color: Colors.pinkAccent, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
                TextField(
                  cursorColor: Colors.pinkAccent,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    prefixIcon:
                        Icon(Icons.phone_android_outlined, color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide:
                          BorderSide(color: Colors.pinkAccent, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3.0,
                      ),
                    ),
                  ),
                  onSubmitted: (text) {
                    ProfileData.userPhone = text;
                  },
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Container(
                    width: 120.0,
                    height: 60.0,
                    child: Center(
                      child: Text(
                        'Done',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
