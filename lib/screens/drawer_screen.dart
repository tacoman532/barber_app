import 'package:barber_app/constants/color_constant.dart';
import 'package:barber_app/screens/celebrity_styles_page.dart';
import 'package:barber_app/screens/home_page.dart';
import 'package:barber_app/screens/popular_barbers_page.dart';
import 'package:barber_app/screens/profile_screen.dart';
import 'package:barber_app/screens/styles_screen.dart';
import 'package:barber_app/screens/trending_styles_page.dart';
import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:flutter/cupertino.dart';
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
    StylesScreen(),
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
        surfaceTintColor: ColorConst.primaryColor,
        backgroundColor: ColorConst.containerColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorConst.backgroundColor,
              ),
              child: Text(
                'Barber App',
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    color: ColorConst.primaryColor,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: ColorConst.primaryColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: ColorConst.primaryColor,
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
                color: ColorConst.primaryColor,
              ),
              title: Text(
                'Trending Styles',
                style: TextStyle(
                  color: ColorConst.primaryColor,
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
                color: ColorConst.primaryColor,
              ),
              title: Text(
                'Celebrity Styles',
                style: TextStyle(
                  color: ColorConst.primaryColor,
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
                color: ColorConst.primaryColor,
              ),
              title: Text(
                'Popular Barbers',
                style: TextStyle(
                  color: ColorConst.primaryColor,
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
                CupertinoIcons.person_2_fill,
                color: ColorConst.primaryColor,
              ),
              title: Text(
                'Personalized Styles',
                style: TextStyle(
                  color: ColorConst.primaryColor,
                  fontSize: 24,
                ),
              ),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: ColorConst.primaryColor,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: ColorConst.primaryColor,
                  fontSize: 24,
                ),
              ),
              selected: _selectedIndex == 5,
              onTap: () {
                _onItemTapped(5);
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
              title: "Personalized Styles"),
        );
      case 5:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBarWidget(
              title: ""),
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