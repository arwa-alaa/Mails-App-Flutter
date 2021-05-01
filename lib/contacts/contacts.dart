import 'package:flutter/material.dart';

import 'new_contact.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 60.0,
          backgroundColor: Colors.pink[300],
          title: Center(
            child: Text(
              'Contacts',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30.0),
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(15.0),
          scrollDirection: Axis.vertical,
          children: [
            NewContact(
                name: ' First friend\'s name',
                email: ' FirstFriend@gmail.com',
                phone: '0123456789',
                photo:
                    'https://cdn5.vectorstock.com/i/thumb-large/74/79/cartoon-girl-with-hijab-vector-8787479.jpg'),
            NewContact(
                name: ' Second friend\'s name',
                email: ' SecondFriend@gmail.com',
                photo:
                    'https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man5-512.png'),
            NewContact(
                name: ' Third friend\'s name',
                email: ' ThirdFriend@gmail.com',
                photo:
                    'https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/60-512.png'),
            NewContact(
                name: ' Fourth friend\'s name',
                email: ' FourthFriend@gmail.com',
                photo:
                    'https://eslteacherginny.com/wp-content/uploads/2019/12/fem-avtr.png'),
            NewContact(
                name: ' Fifth friend\'s name',
                email: ' FifthFriend@gmail.com',
                photo:
                    'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
          ],
        ),
      ),
    );
  }
}
