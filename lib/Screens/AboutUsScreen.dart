import 'package:flutter/material.dart';
import 'package:travelastic/Screens/ContactSalesScreen.dart';
import 'package:travelastic/Screens/exploreScreen.dart';
import 'package:travelastic/utils/ColorChange.dart';

class Aboutusscreen extends StatelessWidget {
  const Aboutusscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 143,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "About us",
                  style: TextStyle(fontSize: 30),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 35,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "Go Back",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 140,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Explorescreen()));
              },
              child: containers("For Business", context)),
          containers("Workers", context),
          containers("Careers", context),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Contactsalesscreen()));
              },
              child: containers("Contact Sales", context)),
        ],
      ),
    );
  }

  Container containers(String t, BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [colorChanger("#098989"), colorChanger("#10EFEF")],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 9),
            child: Text(
              t,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
