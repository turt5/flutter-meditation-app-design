import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meditation_app_flutter/colors.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Ios',
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: CustomColor.primary, // Set your desired color here
        statusBarIconBrightness:
            Brightness.dark, // Change the status bar icons color
        systemNavigationBarColor: CustomColor.primary,
        systemNavigationBarIconBrightness: Brightness.dark));

    return Scaffold(
      backgroundColor: CustomColor.primary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 20, bottom: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/miranda.jpg"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Welcome back',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Miranda Iarsen',
                              style: TextStyle(
                                  fontFamily: 'Acme',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                              width: 25,
                              height: 25,
                              child: Image.asset(
                                'assets/images/notification.png',
                                scale: 2.5,
                              )),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.teal.shade200,
                                shape: BoxShape.circle),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 370,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.redAccent,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.sort),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Colors.grey.shade100, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    contentPadding: EdgeInsets.only(left: 30)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Mood swings',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Stress',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Depression',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Others',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Mood swings',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              // color: Colors.red,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.teal.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '45 mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'James Madchen',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Love-kind meditation',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60),
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'During loving kindness meditation, you focus benevolent and loving energy toward yourself and others.',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.teal.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '34 mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Kate Landon',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Flower meditation',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60),
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Outdoor concentration meditation, the object is flower.',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '25 mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'David Wilson',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Breather',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60),
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'A 5-minute intro to meditation, relax and inhale to start.',
                            style: TextStyle(
                                color: Colors.grey.shade400, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.teal.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '34 mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Kate Landon',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Flower meditation',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60),
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Outdoor concentration meditation, the object is flower.',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.teal.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '34 mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Kate Landon',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Flower meditation',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60),
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Outdoor concentration meditation, the object is flower.',
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GNav(
          rippleColor: Colors.grey.shade300,
          // tab button ripple color when pressed// tab button hover color
          haptic: true,
          // haptic feedback
          tabBorderRadius: 15,
          // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
          curve: Curves.easeInOutBack,
          // tab animation curves
          duration: Duration(milliseconds: 600),
          // tab animation duration
          gap: 8,
          // the tab button gap between icon and text
          color: Colors.grey.shade600,
          // unselected icon color
          activeColor: Colors.black,
          // selected icon and text color
          iconSize: 22,
          // tab button icon size
          tabBackgroundColor: Colors.teal.withOpacity(0.3),
          // selected tab background color
          // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          tabMargin: const EdgeInsets.all(5),
          tabs: const [
            GButton(
              icon: LineIcons.home,
            ),
            GButton(
              icon: Icons.category_outlined,
            ),
            GButton(
              icon: Icons.calendar_month_rounded,
            ),
            GButton(
              icon: Icons.slow_motion_video_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
