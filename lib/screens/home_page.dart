import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:barber_app/widgets/drawer_widget.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';


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
        appBar: AppBarWidget(title: "Home",),
        drawer: DrawerWidget(),
        body: Align(
              alignment: AlignmentDirectional(-0.7, 0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                    child: Text(
                      'Welcome, Michael',
                      style: GoogleFonts.oswald(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            )
        );
  }
}
