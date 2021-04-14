import 'package:flutter/material.dart';
import 'package:session6/views/welcome_screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   final screenWidth = MediaQuery.of(context).size.width;
  //   final screenHeight = MediaQuery.of(context).size.height;

  //   return Scaffold(
  //     body: Container(
  //         width: screenWidth,
  //         height: screenHeight,
  //         color: Colors.amber,
  //         child: Stack(
  //           children: <Widget>[
  //             Container(
  //               height: screenWidth,
  //               width: screenWidth,
  //               color: Colors.grey,
  //             ),
  //             //Positioned can use only under Stack widget
  //             Positioned(
  //               top: 50,
  //               left: 30,
  //               child: Container(
  //                 height: screenWidth / 2,
  //                 width: screenWidth / 2,
  //                 color: Colors.black,
  //               ),
  //             ),
  //             Positioned(
  //               top: 50,
  //               left: 30,
  //               child: Icon(
  //                 Icons.ac_unit,
  //                 size: 50,
  //                 color: Colors.red,
  //               ),
  //             ),
  //             //this can use any time
  //             Align(
  //               alignment: Alignment.bottomCenter,
  //               child: Container(
  //                 height: screenWidth / 2,
  //                 width: screenWidth / 2,
  //                 color: Colors.green,
  //               ),
  //             ),
  //           ],
  //         )),
  //   );
  

