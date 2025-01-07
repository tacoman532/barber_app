import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

class ProfileInfoPage extends StatefulWidget {
  const ProfileInfoPage({super.key});

  @override
  State<ProfileInfoPage> createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  final user = FirebaseAuth.instance.currentUser;
  List<Color> colors = [
    Color.fromARGB(175, 72, 30, 20),
    Color.fromARGB(255, 72, 30, 20)
  ];
  bool toggle = true;

  void initState() {
    super.initState();
    // Timer to periodically change the gradient
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        // Toggle between two color schemes for the gradient
        colors = toggle
            ? [Color.fromARGB(255, 72, 30, 20), Color.fromARGB(100, 72, 30, 20)]
            : [
                Color.fromARGB(175, 72, 30, 20),
                Color.fromARGB(255, 72, 30, 20)
              ];
        toggle = !toggle;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      body: ListView(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(seconds: 2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  user?.displayName as String,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.deepOrange,
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          textStyle: TextStyle(fontSize: 10),
                        ),
                        child: Text(
                          'Change Email',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    user?.email ?? 'No Email',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.deepOrange,
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Phone Number',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          textStyle: TextStyle(fontSize: 10),
                        ),
                        child: Text(
                          'Change Phone Number',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    '571-345-2143',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.deepOrange,
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          textStyle: TextStyle(fontSize: 10),
                        ),
                        child: Text(
                          'Change Username',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    'tacoman532',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          await FirebaseAuth.instance.signOut();
                        } catch (e) {
                          print("Error signing out: $e");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(0xFF, 72, 30, 20),
                      ),
                      child: Text(
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        "Log Out",
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Delete Account'),
                          content: const Text(
                              'Are You Sure You Want to Delete Account?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () async {
                                try {
                                  await FirebaseAuth.instance.currentUser!
                                      .delete();
                                  Navigator.pop(context);
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'requires-recent-login') {
                                    print(
                                        'The user must reauthenticate before this operation can be executed.');
                                  }
                                }
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(0xFF, 72, 30, 20),
                      ),
                      child: Text(
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        "Delete Account",
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
