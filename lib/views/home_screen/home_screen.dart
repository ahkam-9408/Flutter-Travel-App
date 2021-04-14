import 'package:flutter/material.dart';
import 'package:session6/views/home_screen/components/activity_card.dart';
import 'package:session6/views/home_screen/components/place_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.softLight),
                          image: AssetImage('assets/images/homebg3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: 22,
                    child: Container(
                      width: screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 40,
                            ),
                            Icon(
                              Icons.more_vert_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    )),
                Container(
                  // height: screenHeight / 3,
                  width: screenWidth,
                  margin: EdgeInsets.only(top: screenHeight * 0.35),
                  padding: EdgeInsets.only(
                      top: screenHeight / 35, left: screenWidth / 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Activities you love",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ActivityCard(
                              iconBlue: 'kayak-blue.png',
                              iconWhite: 'kayak-white.png',
                              imageText: 'Kayaking',
                            ),
                            ActivityCard(
                                iconBlue: 'hiking-blue.png',
                                iconWhite: 'hiking-white.png',
                                imageText: 'Hiking'),
                            ActivityCard(
                                iconBlue: 'fishing-blue.png',
                                iconWhite: 'fishing-white.png',
                                imageText: 'Fishing'),
                            ActivityCard(
                                iconBlue: 'boat-blue.png',
                                iconWhite: 'boat-white.png',
                                imageText: 'Kayaking'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 35,
                      ),
                      Text(
                        "Recommended Places",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenHeight / 35,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            PlaceCard(
                              imageUrl: 'place1.png',
                              text: 'Lichnos camp Greece',
                            ),
                            PlaceCard(
                              imageUrl: 'place2.png',
                              text: 'Boys of Fire Australia',
                            ),
                            PlaceCard(
                              imageUrl: 'place3.png',
                              text: 'Cape Range National Park Australia',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight / 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Create new place",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    Text(
                                      "Create camping with your Friends",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.add_circle,
                                  color: Color(0XFF0172c0),
                                  size: 30,
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: screenHeight / 35,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
