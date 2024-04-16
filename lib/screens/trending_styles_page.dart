import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Trending Styles",),
      backgroundColor: Colors.white,
      drawer: DrawerWidget(),
      body: Center(
        child: Text("trending styles"),
      )
    );
  }
}
