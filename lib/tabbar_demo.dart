import 'package:flutter/material.dart';
import 'package:haseeb_project/grid_view.dart';
import 'package:haseeb_project/login.dart';
import 'package:haseeb_project/page_view.dart';

class TabbarDemoDemo extends StatelessWidget {
  const TabbarDemoDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Demo"),
          bottom: TabBar(
            tabs: [Icon(Icons.home), Icon(Icons.favorite), Icon(Icons.person)],
          ),
        ),
        body: TabBarView(
          children: [LoginView(), GridViewDemo(), PageViewDemo()],
        ),
      ),
    );
  }
}
