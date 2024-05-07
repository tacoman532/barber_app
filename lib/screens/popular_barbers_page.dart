import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:barber_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class PopularBarbersPage extends StatefulWidget {
  const PopularBarbersPage({super.key});

  @override
  State<PopularBarbersPage> createState() => _PopularBarbersPageState();
}

class _PopularBarbersPageState extends State<PopularBarbersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(title: "Popular Barbers",),
        backgroundColor: Colors.white,
        drawer: DrawerWidget(),
      body: Align(
        alignment: AlignmentDirectional(5, 5),//not working
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
              child: Text(
                'Popular Barbers In Your Area',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  ListTile(
                    title: Text(
                      'Jeff',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, '/barb', arguments: {"name" : "Jeff"});
                      });
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Bob',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Michael',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Jason',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Kyle',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
