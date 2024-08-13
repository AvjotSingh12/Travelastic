import 'package:flutter/material.dart';
import 'package:travelastic/utils/ColorChange.dart';

class Ceoscreen extends StatelessWidget {
  const Ceoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CEO Header Container
          Container(
            padding: EdgeInsets.only(top: 70, left: 16, right: 16),
            width: double.infinity,
            height: 100, // Height of the CEO text container
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Text(
              "CEO",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20), // Space between the container and the ListTile
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16), // Horizontal padding
            child: ListTile(
              leading: Container(
                width: 120, // Adjust the width of the image container
                height: 120, // Adjust the height of the image container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), // Rounded border
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/ceo.png"),
                    fit: BoxFit.cover, // Ensures the image covers the container
                  ),
                ),
              ),
              title: Text(
                "Mike Shebat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                "CEO of Traba",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              contentPadding: EdgeInsets.zero, // Remove default padding
              isThreeLine: true, // Allows for more space for the subtitle
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Mike Shebat is the CEO and Co-Founder of Traba. He previously worked at Uber as a Senior Manager, Global Product. Mike Shebat attended the University of Virginia.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            alignment: Alignment.center,
            color: colorChanger("#10FEFE"),
            child: const Text(
              "Overview",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Underover("Number of Founded Organizations", "1"),
                  SizedBox(height: 20),
                  Underover("CB Rank (Person)", "5068"),
                  SizedBox(height: 20),
                  Underover("Primary Organization", "Traba"),
                  SizedBox(height: 20),
                  Underover("Primary Job Title", "CEO & Co-Founder"),
                  SizedBox(height: 20),
                  Underover("Location", "Miami, Florida, United States"),
                  SizedBox(height: 20),
                  Underover(
                      "Regions", "Greater Miami Area,East Coast, SouthernUS"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding Underover(String t1, String t2) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 100,
        width: double.infinity, // Adjust width to fit screen width
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: colorChanger("#10FEFE"), // Border color
            width: 2, // Border width
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t1,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10), // Adds space between text and container
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorChanger("#044B4B"),
              ),
              child: Text(
                t2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
