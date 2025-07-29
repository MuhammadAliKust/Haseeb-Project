import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single Selection")),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return Card(
            color: selectedIndex == i ? Colors.blue : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListTile(
              onTap: () {
                selectedIndex = i;
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Selected Index: $selectedIndex"),
              subtitle: Text("Loop Index: $i"),
              trailing: Icon(Icons.arrow_forward),
              // tileColor: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
