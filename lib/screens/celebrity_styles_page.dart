import 'package:flutter/material.dart';

class CelebrityStylesPage extends StatefulWidget {
  const CelebrityStylesPage({super.key});

  @override
  State<CelebrityStylesPage> createState() => _CelebrityStylesPageState();
}

class _CelebrityStylesPageState extends State<CelebrityStylesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: Align(
        alignment: AlignmentDirectional(5, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
              child: Text(
                'Celebrity Hairstyles',
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
                      'Lebron James',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Justin Bieber',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Drake',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Chris Hemsworth',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Tom Cruise',
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
