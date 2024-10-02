import 'package:barber_app/constants/color_constant.dart';
import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarberScreen extends StatefulWidget {
  final String name;
  final String location;
  final String url;
  final String reviews;
  final String contactHours;
  final String services;

  const BarberScreen(
      {super.key,
      this.name = "",
      this.location = "",
      this.url = "",
      this.reviews = "",
      this.contactHours = "",
      this.services = ""});

  @override
  State<BarberScreen> createState() => _BarberScreenState();
}

class _BarberScreenState extends State<BarberScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> servicesList = widget.services.split('\n');
    List<String> contactList = widget.contactHours.split('\n');

    return Scaffold(
      appBar: AppBarWidget(
        title: 'Popular Barbers',
      ),
      backgroundColor: Colors.white,
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 12.0),
                  child: Text(
                    widget.name,
                    style: GoogleFonts.oswald(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                child: Text(
                  widget.location,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                child: Text(
                  // contactList[0] + "\n"+ contactList[1],
                  widget.contactHours,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Services:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    ...servicesList.map(
                          (service) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                service,
                                style: TextStyle(
                                  color: Colors.grey[1000],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).toList(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                child: Text(
                  widget.url,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
                child: Text(
                  widget.reviews,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
