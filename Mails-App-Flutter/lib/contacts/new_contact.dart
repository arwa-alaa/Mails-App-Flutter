import 'package:flutter/material.dart';

class NewContact extends StatelessWidget {
  String name, email, phone, photo;

  NewContact({
    this.name,
    this.email,
    this.phone,
    this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 300.0,
      height: 150.0,
      decoration: BoxDecoration(
          color: Colors.pink[100], borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 33.0,
              backgroundImage: NetworkImage(photo),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.white70,
                    ),
                    Text(
                      email,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: Colors.white70,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 68.0),
                    child: Text(
                      'Message',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.white70,
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
  }
}
