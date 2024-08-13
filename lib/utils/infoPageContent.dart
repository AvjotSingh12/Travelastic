import 'package:flutter/material.dart';
import 'ColorChange.dart';

  PopupMenuItem<String> customPopupMenuItem(String value, String text) {
    return PopupMenuItem<String>(
      value: value,
      child: Row(
        children: [
          // Dot
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 10),
          // Menu Name with Underline
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 16,
              ),
            ),
          ),
          // Arrow Icon with Rounded Border
          Container(
            padding: EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
  IconButton appbarButton(BuildContext context, Icon icon) {
    return IconButton(
      iconSize: 30.0, // Enlarge the menu icon
      icon: icon,
      onPressed: () {
        // Handle icon taps here
      },
    );
  }

 Expanded boxwidget(String t1, String t2) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
        child: Container(
          height: 170,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: colorChanger("#044B4B"),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorChanger("#10FEFE"),
                    ),
                    child: Center(
                      child: Text(
                        t1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  t2,
                  style: TextStyle(color: Colors.white, fontSize: 11.5),
                  textAlign: TextAlign.center, // Center-align the text
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        t4,
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
            )),
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
            t1,
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
              child: Image.asset(t3),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                t2,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                child: Center(
                  child: Text(
                    t4,
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
    );

  }
}
