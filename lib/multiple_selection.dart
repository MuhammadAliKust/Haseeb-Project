import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Selection")),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return Card(
            color: selectedIndex.contains(i) ? Colors.blue : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListTile(
              onTap: () {
                if(selectedIndex.contains(i)){
                  selectedIndex.remove(i);
                }else{
                  selectedIndex.add(i);
                }

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
