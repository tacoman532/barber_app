import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/drawer_widget.dart';

class ProfileLogin extends StatefulWidget {
  const ProfileLogin({super.key});

  @override
  State<ProfileLogin> createState() => _ProfileLoginState();
}

class _ProfileLoginState extends State<ProfileLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          title: "Profile",
        ),
        drawer: DrawerWidget(),
        body: Align(
            alignment: AlignmentDirectional(-0.7, 0),
            child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  ListTile(
                    title: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/log');
                      });
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/sign');
                      });
                    },
                  ),
                ]
            )
        )
    );
  }
}
