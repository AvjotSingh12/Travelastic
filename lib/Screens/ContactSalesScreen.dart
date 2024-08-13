import 'package:flutter/material.dart';
import 'package:travelastic/utils/ColorChange.dart';

class Contactsalesscreen extends StatelessWidget {
  const Contactsalesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        width: double.infinity,
        height: 143,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Contact Sales",
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
      Container(
        height: 50,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: const Center(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Share your staffing issues with industry experts, and we’ll help you maximize your operational productivity.",
                    style:
                        TextStyle(fontSize: 20, overflow: TextOverflow.visible),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 70,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            textAlign: TextAlign.center,
            "Are you a Business or Worker?",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 50,
        width: 170,
        decoration: BoxDecoration(
            color: colorChanger("#10EFEF"),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Image(
              image: AssetImage("assets/images/round.png"),
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Business",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 50,
        width: 170,
        decoration: BoxDecoration(
            color: colorChanger("#05B4B4"),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SizedBox(width: 20),
            Image(
              image: AssetImage("assets/images/round.png"),
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Work",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    ]));
  }
}
