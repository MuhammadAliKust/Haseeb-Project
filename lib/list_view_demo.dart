import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Builder")),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(left: 38.0, right: 50, top: 100),
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification Title"),
                subtitle: Text("Notification Sub Title"),
                trailing: Icon(Icons.arrow_forward),
                // tileColor: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}
