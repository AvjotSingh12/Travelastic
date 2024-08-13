import 'package:flutter/material.dart';
import 'package:travelastic/utils/ColorChange.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 143,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Jobs",
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
                          borderRadius: BorderRadius.circular(20),
                        ),
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
          const SizedBox(height: 20),
          Container(
            width: 370,
            height: 650,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorChanger("#154444"),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  jobswidget("Senior Software Engineer (Frontend)"),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(
                      height: 1,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  jobswidget("React Native Engineer"),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(
                      height: 1,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  jobswidget("Software Engineer"),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(
                      height: 1,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  jobswidget("Head of Product"),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(
                      height: 1,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                  jobswidget("Technical Recruiter"),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(
                      height: 1,
                      width: 500,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget jobswidget(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              overflow: TextOverflow.visible,
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              // Implement the apply action here
            },
            child: Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Apply",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
