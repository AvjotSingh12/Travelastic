import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelastic/Screens/OptionsScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Optionsscreen()));
              // Implement login functionality here
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
