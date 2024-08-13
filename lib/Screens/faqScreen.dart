import 'package:flutter/material.dart';
import 'package:travelastic/Screens/AnswerScreen.dart';
import 'package:travelastic/utils/ColorChange.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

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
                  "FAQ",
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
          containers("What is Traba?", context),
          containers("Is Traba a tech company?", context),
          containers("Why join Traba?", context),
          containers("Is the Traba app legit?", context),
          containers("Who is the CEO of Traba?", context),
          containers("When was Traba founded?", context),
          containers("Is the Traba founded?", context),
          containers("What is an upshift company?", context),
        ],
      ),
    );
  }

  InkWell containers(String t, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AnswerScreen(t: t)));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 40,
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
