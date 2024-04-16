import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(0xFF, 72, 30, 20),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Barber App',
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, '/home');
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.style,
                color: Colors.white,
              ),
              title: Text(
                'Trending Styles',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, '/trend');
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.celebration,
                color: Colors.white,
              ),
              title: Text(
                'Celebrity Styles',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cut,
                color: Colors.white,
              ),
              title: Text(
                'Popular Barbers',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ));
  }
}
