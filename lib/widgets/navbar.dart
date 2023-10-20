import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/colors.dart';
import 'package:project/pages/home.dart';
import 'package:project/pages/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

int _page = 0;

class _NavbarState extends State<Navbar> {
  void changePage(index) {
    setState(() => _page = index);
  }

  final pages = [Home(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Color(colorSecond),
          animationDuration: Duration(milliseconds: 500),
          height: 75.0,
          index: _page,
          onTap: changePage,
          items: [
            Icon(
              Icons.home,
              color: Color(colorText),
            ),
            Icon(
              Icons.person,
              color: Color(colorText),
            )
            // Icon(
            //   Icons.settings,
            //   color: Color(colorText),
            // )
          ]),
    );
  }
}
