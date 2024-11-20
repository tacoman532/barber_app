import 'dart:async';
import 'package:barber_app/constants/color_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileInfoPage extends StatefulWidget {
  const ProfileInfoPage({super.key});

  @override
  State<ProfileInfoPage> createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  final user = FirebaseAuth.instance.currentUser;
  List<Color> colors = [
    ColorConst.containerColor,
    Color.fromARGB(255, 111, 43, 31)
  ];
  bool toggle = true;

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        colors = toggle
            ? [
          Color.fromARGB(255, 111, 43, 31),
          ColorConst.containerColor,
              ]
            : [ColorConst.containerColor, Color.fromARGB(255, 111, 43, 31)];
        toggle = !toggle;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                //stops: [0.2, 0.4, 0.6, 0.8],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
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
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    user?.email as String,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                  title: Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                      child: Text("Log Out"),
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
                      child: Text("Delete Account"),
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
