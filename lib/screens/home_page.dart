import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:barber_app/widgets/drawer_widget.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bubble_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: "Home",
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
              child: Text(
                'Welcome, Michael',
                style: GoogleFonts.oswald(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
              child: Text(
                'Trending Styles',
                style: GoogleFonts.oswald(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Row(children: [
            PageView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/trend');
                  },
                  child: BubbleWidget(
                    information: 'Additional Information',
                    color: Colors.red,
                    height: 171.0,
                    child: Image.network(
                      'https://www.fashionbeans.com/wp-content/uploads/2023/08/barberdarron_number1haircutwithskinfade.jpg',
                      height: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/trend');
                  },
                  child: BubbleWidget(
                    information: 'Additional Information',
                    color: Colors.red,
                    height: 171.0,
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/e/e8/Chris_Hemsworth_by_Gage_Skidmore_2_%28cropped%29.jpg',
                      height: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/trend');
                  },
                  child: BubbleWidget(
                    information: 'Additional Information',
                    color: Colors.red,
                    height: 171.0,
                    child: Image.network(
                      'https://hips.hearstapps.com/hmg-prod/images/mh-8-24-haircuts-1598305836.png?crop=0.502xw:1.00xh;0,0&resize=640:*',
                      height: 100,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/trend');
                  },
                  child: BubbleWidget(
                    information: 'Additional Information',
                    color: Colors.red,
                    height: 171.0,
                    child: Image.network(
                      'https://hips.hearstapps.com/hmg-prod/images/mh-8-24-haircuts-1598305836.png?crop=0.502xw:1.00xh;0,0&resize=640:*',
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
