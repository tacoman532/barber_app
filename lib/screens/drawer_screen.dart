import 'package:barber_app/screens/celebrity_styles_page.dart';
import 'package:barber_app/screens/home_page.dart';
import 'package:barber_app/screens/popular_barbers_page.dart';
import 'package:barber_app/screens/profile_screen.dart';
import 'package:barber_app/screens/trending_styles_page.dart';
import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    // first page
    HomePage(),
    // second page
    TrendingPage(),
    // third page
    CelebrityStylesPage(),
    PopularBarbersPage(),
    ProfilePage(),
    // more pages, more ListTiles and more appbars in the method
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(), // Use a method to get the appropriate app bar
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
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
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
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
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
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
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.cut,
                color: Colors.white,
              ),
              title: Text(
                'Popular Barbers',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Method to get the appropriate app bar based on the selected index
  PreferredSizeWidget _getAppBar() {
    switch (_selectedIndex) {
      case 0:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBarWidget(
              title: "Home"),
        );
      case 1:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBarWidget(
    title: "Trending Styles"),
        );
      case 2:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBarWidget(
    title: "Celebrity Styles"),
        );
      case 3:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBarWidget(
              title: "Popular Barbers"),
        );
      case 4:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBarWidget(
              title: "Profile"),
        );
      default:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            title: const Text('Default'),
            // You can have a default app bar here
          ),
        );
    }
  }
}