import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:haseeb_project/grid_view.dart';
import 'package:haseeb_project/login.dart';
import 'package:haseeb_project/page_view.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [LoginView(), PageViewDemo(), GridViewDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (tapIndex) {
          log(tapIndex.toString());
          selectedIndex = tapIndex;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
