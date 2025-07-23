import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: emailController,
            // enabled: false,
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'test@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.email),
              filled: true,
              fillColor: Colors.blue.withOpacity(0.3),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 4),

                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow, width: 4),

                borderRadius: BorderRadius.circular(20),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 4),

                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 20),

          TextField(
            controller: pwdController,
            // enabled: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            maxLines: 1,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: 'Password must be 6 or more characters.',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              filled: true,
              fillColor: Colors.blue.withOpacity(0.3),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 4),

                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow, width: 4),

                borderRadius: BorderRadius.circular(20),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 4),

                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (emailController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email cannot be empty.")),
                );
                return;
              }
              if (!emailController.text.isEmail) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email is not valid.")),
                );
                return;
              }
              if (pwdController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Password cannot be empty.")),
                );
                return;
              }
              if (pwdController.text.length < 6) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Password is too short.")),
                );
                return;
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
