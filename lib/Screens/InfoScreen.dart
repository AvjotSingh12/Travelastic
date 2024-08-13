import 'package:flutter/material.dart';
import 'package:travelastic/Screens/AboutUsScreen.dart';
import 'package:travelastic/Screens/CeoScreen.dart';
import 'package:travelastic/Screens/faqScreen.dart';
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
                PopupMenuButton<String>(
                  icon: Icon(Icons.menu, size: 30.0),
                  onSelected: (value) {
                    // Handle menu item selection
                    if (value == 'abouus') {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => Aboutusscreen()));
                    } else if (value == 'objective') {
                      // Navigate to Settings
                    } else if (value == 'ceo') {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => Ceoscreen()));
                    } else if (value == 'job') {
                      // Handle Logout
                    } else if (value == 'faq') {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => FaqScreen()));
                    }
                  },
                  itemBuilder: (BuildContext context) => [
                    customPopupMenuItem('abouus', 'About us'),
                    customPopupMenuItem('objective ', 'Objective'),
                    customPopupMenuItem('ceo', 'CEO'),
                    customPopupMenuItem('job', 'job'),
                    customPopupMenuItem('faq', 'FAQ'),
                  ],
                ),
                SizedBox(width: 20),
                appbarButton(context, Icon(Icons.search)),
              ],
            ),
            Center(
              child: Container(
                height: 80,
                width: 70,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            Row(
              children: [
                appbarButton(context, Icon(Icons.info)),
                SizedBox(width: 15),
                appbarButton(context, Icon(Icons.person)),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
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
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.handshake),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Traba is a technology company that increases the productivity of the light industrial supply chain. We connect businesses with vetted workers for staffing needs by utilizing location monitoring, predictive algorithms, machine learning, AI, computer vision, and other technologies.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            infopage(
                "Reliable Industrial Staffing",
                "Don't compromise on your workforce needs. We'll make sure that each worker arrives on time, every time.",
                "assets/images/boy.png",
                "Get Started Now",
                true),
            infopage(
                "No More Downtime",
                "98% average fill rate across all Traba postings. Workers consistently show up on time because we put multiple emergency failsafes in our staffing process. You will never experience operational downtimes from worker shortages by utilizing paid backups, notification alerts, and much more.",
                "assets/images/img_1.png",
                "Get Started Now",
                false),
            infopage(
                "Find Quality Workers Faster",
                "We find workers perfect for your business within 24 hours using our Skill Certification, AI Matching, and Personal Interview vetting processes.10,000s of vetted workersBackground check and interviewedExperienced workers with proven records",
                "assets/images/img_2.png",
                "See Roles We Fill",
                true),
            Container(
              height: 30,
              width: double.infinity,
              alignment: Alignment.center,
              color: colorChanger("#10FEFE"),
              child: const Text(
                "Tarab works a 3 shift schedule...",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Row(children: [
              boxwidget("Site Visits",
                  "We conduct site visits to understand your operations, business needs, and culture."),
              boxwidget("Worker Vetting",
                  "We interview each worker personally before every shift assignment to identify valuable skillsets and potential red flags."),
              boxwidget("Worker Preparation",
                  "We communicate the exact role details, responsibilities, and shift information to workers."),
            ]),
            infopage(
                "Staffing Operation",
                "Both teams are working around the clock to manage every posted shift. The local operation teams ensure that every worker and backup is ready.",
                "assets/images/img_3.png",
                "Learn More",
                false),
            Container(
              height: 30,
              width: double.infinity,
              alignment: Alignment.center,
              color: colorChanger("#10FEFE"),
              child: const Text(
                "Custom Business Portal",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17),
              child: Container(
                padding: EdgeInsets.all(19),
                child: Text(
                  "Designed to help you spend less time and money across",
                  style: TextStyle(fontSize: 17),
                  maxLines: 2,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Explore More",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
