import 'package:flutter/material.dart';
import 'ColorChange.dart';

Widget infopage(String t1, String t2, String t3, String t4, bool isright) {
  if (isright) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Container(
          height: 30,
          width: double.infinity,
          alignment: Alignment.center,
          color: colorChanger("#10FEFE"),
          child: Text(
            t1,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  t2,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(width: 10), // Add space between text and image
              Container(
                height: 100,
                width: 100,
                child: Image.asset(t3),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            onPressed: () {
              // Implement button functionality here
            },
            child: Text(t4),
          ),
        ),
      ],
    );
  } else {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30,
          width: double.infinity,
          alignment: Alignment.center, // Center text within the container
          color: colorChanger("#10FEFE"),
          child: Text(
            "No More Downtime",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/img_1.png"),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                "98% average fill rate across all Traba postings. Workers consistently show up on time because we put multiple emergency failsafes in our staffing process. You will never experience operational downtimes from worker shortages by utilizing paid backups, notification alerts, and much more.",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Implement button functionality here
          },
          child: Text("Get Started Now"),
        ),
      ],
    );
  }
}
