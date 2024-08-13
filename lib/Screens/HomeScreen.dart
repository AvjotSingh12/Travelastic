import 'package:flutter/material.dart';

import '../utils/ColorChange.dart';
import 'LoginScreen.dart';
import 'SignupScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Track which button is selected
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 50, top: 57),
        child: Column(
          children: [
            // Add padding to the logo image
            Container(
              width: 102,
              height: 47,
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(height: 40.0),
            // Add space between the logo and container

            // Main container with a rounded border and adjusted opacity
            Container(
              constraints: const BoxConstraints(
                maxHeight: 449,
                maxWidth: 299,
              ),
              decoration: BoxDecoration(
                color: colorChanger("#49F4F4").withOpacity(0.4),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  // Inner container with solid background to hold the toggle buttons

                  Padding(
                    padding: const EdgeInsets.only(top: 17.0),
                    child: ToggleButtons(
                      borderRadius: BorderRadius.circular(20.0),
                      fillColor: Colors.white,
                      selectedColor: colorChanger('#49F4F4').withOpacity(1),
                      color: Colors.black,
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: <Widget>[
                          Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text('Login', style: TextStyle(
                            color: Colors.black
                          )
                            ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text('Signup', style: TextStyle(
                            color: Colors.black
                          ),),
                        ),
                      ],
                      isSelected: isSelected,
                      onPressed: (int index) {
                        setState(() {
                          for (int i = 0; i < isSelected.length; i++) {
                            isSelected[i] = i == index;
                          }
                        });
                      },
                    ),
                  ),

                  // Display the Login or Signup screen based on the selection
                  Expanded(
                    child: isSelected[0] ? LoginScreen() : SignupScreen(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  // Function to change hex color to Color object


