import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View")),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3,
          ),
          itemBuilder: (context, i) {
            return Container(
              height: 400,
              width: 400,

              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue, width: 3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.add, size: 30),
                  Text("All", style: TextStyle(fontSize: 25)),
                  Icon(Icons.add, size: 30),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
