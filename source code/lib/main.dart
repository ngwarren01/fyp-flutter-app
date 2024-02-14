import 'package:flutter/material.dart';
import 'package:fyp1/constant.dart';
import 'package:fyp1/stats_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fyp1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final screens = [
    HomePage(),
    stats_page(),
    stats_page(),
    stats_page(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wifi Networking App',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: primaryColor,
          ),
          centerTitle: true,
          title: Text('Home',
              style: GoogleFonts.roboto(
                color: primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_sharp),
              color: primaryColor,
            )
          ],
        ),

        body: screens[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_sharp),
              label: "Stats",
              backgroundColor: primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt),
              label: "Profile",
              backgroundColor: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
