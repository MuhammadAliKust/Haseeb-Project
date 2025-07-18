import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'First Screen',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back, color: Colors.white, size: 40),
          actions: [
            Icon(Icons.notifications, color: Colors.white, size: 30),
            Icon(Icons.shopping_cart, color: Colors.white, size: 30),
            Icon(Icons.notifications, color: Colors.white, size: 30),
          ],
        ),
        backgroundColor: Colors.yellow,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),), Text("First Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Second Text",style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("Third Text",style: TextStyle(fontSize: 40),),
          ],),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
