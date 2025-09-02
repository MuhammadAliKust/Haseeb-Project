import 'package:flutter/material.dart';
import 'package:haseeb_project/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  const ScreenBView({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Screen B")),
      body: Column(
        children: [
          Text("Name: ${userProvider.getName()}"),
          Center(
            child: ElevatedButton(onPressed: () {}, child: Text("Go to Screen B")),
          ),
        ],
      ),
    );
  }
}
