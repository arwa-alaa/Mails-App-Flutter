import 'package:flutter/material.dart';
import 'package:mail_app/profile/profile_data.dart';
import 'package:mail_app/start_page.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.pink[300],
              child: Center(
                child: Container(
                  child: Column(children: [
                    SizedBox(height: 65.0),
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),

                    SizedBox(height: 25.0),
                    Text(
                      ProfileData.userName,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      ProfileData.userEmail,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),

                    // Image.asset('assets/profile.jpg',
                    //       width: 300, height: 300, fit: BoxFit.fill),
                  ]),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.0),
                  Row(children: [
                    Icon(
                      Icons.drive_file_rename_outline,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ProfileData.userName,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ]),
                  SizedBox(height: 10.0),
                  Row(children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ProfileData.userEmail,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ]),
                  SizedBox(height: 10.0),
                  Row(children: [
                    Icon(
                      Icons.phone_android_outlined,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ProfileData.userPhone,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ]),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StartPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 150.0,
                          height: 60.0,
                          child: Center(
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Log Out  ',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
