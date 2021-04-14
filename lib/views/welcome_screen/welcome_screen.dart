import 'package:flutter/material.dart';
import 'package:session6/views/home_screen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black, BlendMode.softLight),
                image: AssetImage('assets/images/bg5.jpg'),
                fit: BoxFit.fitHeight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "The Travalling app",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight / 20,top: screenHeight / 50),
              child: Text(
                "Connect with people and plan your next oscape to explore this beautiful world!",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
                          child: Container(
                width: screenWidth * 0.5,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0XFF0172c0).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0XFF0172c0).withOpacity(0.3),
                          blurRadius: 20,
                          offset: Offset(0, 8))
                    ]),
                child: Text(
                  "Lets Go".toUpperCase(),
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
