import 'package:flutter/material.dart';
import 'package:travelastic/utils/ColorChange.dart';
import '../utils/infoPageContent.dart';

class Infoscreen extends StatelessWidget {
  const Infoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  iconSize: 30.0, // Enlarge the menu icon
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    // Handle the drawer menu button press
                    Scaffold.of(context).openDrawer();
                  },
                ),
                SizedBox(width: 20), // Add spacing between menu and search icons
                IconButton(
                  iconSize: 28.0, // Enlarge the search icon
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Handle search icon press
                  },
                ),
              ],
            ),
            Center(
              child: Container(
                height: 80, // Adjusted size
                width: 70, // Adjusted size
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 28.0, // Enlarge the info icon
                  icon: Icon(Icons.info),
                  onPressed: () {
                    // Handle info icon press
                  },
                ),
                SizedBox(width: 15), // Add spacing between icons
                IconButton(
                  iconSize: 28.0, // Enlarge the person icon
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Handle person icon press
                  },
                ),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false, // Remove default back button
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(width: 10), // Add spacing between text and icon
                  Container(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.handshake),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Traba is a technology company that increases the productivity of the light industrial supply chain. We connect businesses with vetted workers for staffing needs by utilizing location monitoring, predictive algorithms, machine learning, AI, computer vision, and other technologies.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            infopage(
              "Reliable Industrial Staffing",
              "Don't compromise on your workforce needs. We'll make sure that each worker arrives on time, every time.",
              "assets/images/boy.png",
              "Get Started Now",true
            ),
            infopage(
                "No More Downtime",
              "98% average fill rate across all Traba postings. Workers consistently show up on time because we put multiple emergency failsafes in our staffing process. You will never experience operational downtimes from worker shortages by utilizing paid backups, notification alerts, and much more.",
                "assets/images/img_1.png",
                "Get Started Now",
              false
            ),
            infopage("Find Quality Workers Faster",
                "We find workers perfect for your business within 24 hours using our Skill Certification, AI Matching, and Personal Interview vetting processes.10,000s of vetted workersBackground check and interviewedExperienced workers with proven records",
                "assets/images/img_2.png",
                "See Roles We Fill", true),
            infopage("Staffing Operation",
           "Both teams are working around the clock to manage every posted shift.The local operation teams ensures that every worker and backup is ",
            "assets/images/img_3.png",
            "Learn More" ,true)

              ],
            ),



        ),

    );
  }
}
