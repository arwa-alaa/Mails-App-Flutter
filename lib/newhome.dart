import 'package:flutter/material.dart';
import 'package:mail_app/contacts/contacts.dart';
import 'package:mail_app/profile/profile.dart';
import 'package:mail_app/profile/profile_data.dart';
import 'package:mail_app/start_page.dart';

import 'home.dart';

class NewHome extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70.0,
          backgroundColor: Colors.pink[300],
          title: Center(
            child: Text(
              'Home',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30.0),
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 270.0,
                color: Colors.pink[100],
                child: Center(
                  child: Container(
                    child: Column(children: [
                      SizedBox(height: 65.0),
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        ProfileData.userName,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        ProfileData.userEmail,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Profile',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Profile()));
                      },
                    ),

                    ListTile(
                      leading: Icon(Icons.notifications_none_outlined),
                      title: Text(
                        'Notifications',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        'Setting',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text(
                        'Log out',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new StartPage()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            width: 330,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/email.png',
                      width: 300, height: 300, fit: BoxFit.fill),
                ]),
          ),
        ),
      ),
    );
  }
}
