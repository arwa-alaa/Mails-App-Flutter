import 'package:flutter/material.dart';
import 'package:mail_app/profile/profile.dart';

import 'contacts/contacts.dart';
import 'mails/mails.dart';
import 'newhome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int curIndex = 0;

  final List<Widget> pages = [
    NewHome(),
    Contacts(),
    Mails(),
    Profile(),
  ];

  void switchPages(int numPage) {
    setState(() {
      curIndex = numPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[curIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: switchPages,
          currentIndex: curIndex,
          iconSize: 30.0,
          selectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.pink[300],
              icon: Icon(Icons.home_outlined, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink[300],
              icon: Icon(Icons.contact_mail_outlined, color: Colors.white),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink[300],
              icon: Icon(
                Icons.mail_outline,
                color: Colors.white,
              ),
              label: 'Mails',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink[300],
              icon: Icon(
                Icons.account_box_outlined,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
