import 'package:flutter/material.dart';
import 'package:travelastic/utils/ColorChange.dart';

class Rolesscreen extends StatelessWidget {
  const Rolesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 143,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white12, // Optional: Background color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Industry Focus",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildSection(
                title: "Manufacturing & Production",
                description: "Food, Textile, Packaging, Fabrication",
                imagePath: "assets/images/image.png",
                right: true),
            const SizedBox(height: 20),
            _buildSection(
                title: "3PLs & Warehousing",
                description: "Pick & Pack,Load & Unload, Kitting",
                imagePath: "assets/images/image34.png",
                right: false),
            const SizedBox(height: 20),
            _buildSection(
                title: "Distribution & Fulfillment",
                description: "Storage, Forklift, Receiving",
                imagePath: "assets/images/image333.png",
                right: true),
          ],
        ),
      ),
    );
  }

  Padding _buildSection(
      {required String title,
      required String description,
      required String imagePath,
      required bool right}) {
    if (right) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: colorChanger("#10EFEF"),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 140, // Adjusted height for better fit
                  width: 140, // Adjusted width for better fit
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: colorChanger("#10EFEF"),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 120, // Adjusted height for better fit
                  width: 120, // Adjusted width for better fit
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      );
    }
  }
}
