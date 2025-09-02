import 'package:flutter/material.dart';
import 'package:haseeb_project/page_view.dart';
import 'package:haseeb_project/providers/user_provider.dart';
import 'package:haseeb_project/screen_a.dart';
import 'package:haseeb_project/single_selection.dart';
import 'package:haseeb_project/tabbar_demo.dart';
import 'package:provider/provider.dart';

import 'bottom_bar.dart';
import 'bottom_sheet.dart';
import 'dialog_box.dart';
import 'dynamic_list_view.dart';
import 'grid_view.dart';
import 'list_view_demo.dart';
import 'login.dart';
import 'multiple_selection.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenAView(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.blue,
      //     title: Text(
      //       'First Screen',
      //       style: TextStyle(
      //         fontSize: 30,
      //         color: Colors.white,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     centerTitle: true,
      //     leading: Icon(Icons.arrow_back, color: Colors.white, size: 40),
      //     actions: [
      //       Icon(Icons.notifications, color: Colors.white, size: 30),
      //       Icon(Icons.shopping_cart, color: Colors.white, size: 30),
      //       Icon(Icons.notifications, color: Colors.white, size: 30),
      //     ],
      //   ),
      //   backgroundColor: Colors.yellow,
      //   body: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text("First Text", style: TextStyle(fontSize: 40)),
      //       SizedBox(height: 50),
      //       Text("Second Text", style: TextStyle(fontSize: 40)),
      //       SizedBox(height: 50),
      //       Text("Third Text", style: TextStyle(fontSize: 40)),
      //       SizedBox(height: 20),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Icon(Icons.add),
      //           Column(
      //             children: [Icon(Icons.add), Icon(Icons.add), Icon(Icons.add)],
      //           ),
      //           Column(
      //             children: [
      //               Icon(Icons.add),
      //               Row(children: [Icon(Icons.add), Icon(Icons.add)]),
      //               Row(
      //                 children: [
      //                   Icon(Icons.add),
      //                   Icon(Icons.add),
      //                   Icon(Icons.add),
      //                 ],
      //               ),
      //               Row(children: [Icon(Icons.add), Icon(Icons.add)]),
      //               Icon(Icons.add),
      //             ],
      //           ),
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Icon(Icons.add),
      //               Icon(Icons.add),
      //               Icon(Icons.add),
      //               Row(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Icon(Icons.add),
      //                   Icon(Icons.add),
      //                   Column(
      //                     children: [
      //                       Icon(Icons.add),
      //                       Icon(Icons.add),
      //                       Icon(Icons.add),
      //                       Icon(Icons.add),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //     backgroundColor: Colors.blue,
      //   ),
      // ),
    );
  }
}
