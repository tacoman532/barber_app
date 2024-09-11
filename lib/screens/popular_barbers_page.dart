import 'package:barber_app/constants/color_constant.dart';
import 'package:barber_app/screens/barber_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PopularBarbersPage extends StatefulWidget {
  const PopularBarbersPage({super.key});

  @override
  State<PopularBarbersPage> createState() => _PopularBarbersPageState();
}

class _PopularBarbersPageState extends State<PopularBarbersPage> {
  final TextEditingController _searchBarController = TextEditingController();
  List<dynamic> _barbershops = [];
  bool _loading = false;

  Future<void> _searchBarbershops() async {
    final String input = _searchBarController.text;
    final List<String> parts = input.split(',');

    if (parts.length < 2) {
      print('Please enter both city and ZIP code seperated by a comma.');
      return;
    }

    final String city = parts[0].trim();
    final String zipcode = parts[1].trim();
    final String url =
        'http://192.168.68.130:5000/get_barbershops/$city/$zipcode';

    print('Request URL: $url');

    setState(() {
      _loading = true;
    });

    try {
      final response = await http.get(Uri.parse(url));
      print('Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        setState(() {
          _barbershops = json.decode(response.body);
        });
      } else {
        print('Failed to load barbershops: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SearchBar(
              controller: _searchBarController,
              onSubmitted: (dynamic) async {
                await _searchBarbershops();
              },
            ),
            SizedBox(
              height: 10,
            ),
            _loading
                ? Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 3),
                    child: CircularProgressIndicator(
                      color: ColorConst.primaryColor,
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: _barbershops.length,
                      itemBuilder: (context, index) {
                        final barbershop = _barbershops[index];
                        return Card(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          elevation: 4,
                          child: ListTile(
                            title: Text(
                              barbershop['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Text(
                              barbershop['location'],
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                            trailing:
                                Icon(Icons.arrow_forward, color: Colors.grey),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            tileColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BarberScreen(
                                    name: barbershop['name'],
                                    location: barbershop['location'],
                                    url: barbershop['url'],
                                    reviews: barbershop['reviews'],
                                    contactHours: barbershop['contact_hours'],
                                    services: barbershop['services'],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
