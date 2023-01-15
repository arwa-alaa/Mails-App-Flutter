import 'package:flutter/material.dart';

import 'mails_data.dart';

class Mails extends StatefulWidget {
  @override
  _MailsState createState() => _MailsState();
}

class _MailsState extends State<Mails> {
  List<MailsData> mail = [
    MailsData(
        name: 'First friend\'s name',
        message: 'It\'s the best app design',
        photo:
            'https://cdn4.vectorstock.com/i/thumb-large/74/78/cartoon-girl-with-hijab-vector-8787478.jpg'),
    MailsData(
        name: 'Second friend\'s name',
        message: 'Do not forget your assignment. the deadline is tomorrow',
        photo:
            'https://image.freepik.com/free-vector/man-avatar-profile-round-icon_24640-14044.jpg'),
    MailsData(
        name: 'Third friend\'s name',
        message: 'you did good effort in this app',
        photo:
            'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png'),
    MailsData(
        name: 'Fourth friend\'s name',
        message: 'Keep achieving your goal',
        photo:
            'https://cdn2.vectorstock.com/i/1000x1000/72/86/female-avatar-profile-icon-round-woman-face-vector-18307286.jpg'),
    MailsData(
        name: 'Fifth friend\'s name',
        message: 'you have Linear Algebra quiz',
        photo:
            'https://www.shareicon.net/data/512x512/2016/09/01/822761_user_512x512.png'),
  ];

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
              'Mails',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30.0),
            ),
          ),
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(15.0),
            itemCount: mail.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 40.0),
                width: 300.0,
                height: 150.0,
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 33.0,
                        backgroundImage: NetworkImage(mail[index].photo),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              mail[index].name,
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                          Center(
                            child: Text(
                              mail[index].message,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.reply,
                              color: Colors.white70,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0, right: 150.0),
                              child: Text(
                                'Reply',
                              ),
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.white70,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
