import 'package:flutter/material.dart';

class AnswerScreen extends StatefulWidget {
  final String? t; // This is the passed question

  AnswerScreen({@required this.t});

  @override
  _AnswerScreenState createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  // Replace the incorrect getter method
  String get question => widget.t ?? "No question passed";

  // Map of questions and answers
  final Map<String, String> faqData = {
    "What is Traba?":
        "Traba is a technology company that increases the productivity of the light industrial supply chain. We connect businesses with vetted workers for staffing needs by utilizing location monitoring, predictive algorithms, machine learning, AI, computer vision, and other technologies.",
    "Why join Traba?":
        "We hire the top 0.1% of talent and offer competitive compensation packages to match. Every team member at Traba is treated as and expected to act as an owner; in return, Traba provides generous company equity to all new hires. No red tape.",
    "Who is the CEO of Traba?":
        "Mike Shebat is the CEO and Co-Founder of Traba. He previously worked at Uber as a Senior Manager, Global Product. Mike Shebat attended the University of Virginia.",
    "When was Traba founded?":
        "Traba's story began in 2021, when Mike Shebat and Akshay Buddiga met in an accelerator. Mike Shebat's experience as Senior Manager, Global Product at Uber, and Akshay Buddiga's background as a Senior Engineering Manager at Fanatics provided the necessary foundation for building a revolutionary platform.",
    "What is an upshift company?":
        "Upshift is a staffing platform that connects businesses in the light industrial and hospitality industries with qualified hourly workers.",
  };

  @override
  Widget build(BuildContext context) {
    // Get the answer based on the passed question
    String answer = faqData[question] ?? "Answer not available";

    return Scaffold(
        body: Column(children: [
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
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              answer,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ]));
  }
}
