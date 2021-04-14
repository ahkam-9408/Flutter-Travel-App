import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const PlaceCard({Key key, @required this.imageUrl, @required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth / 25,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/$imageUrl')),
            color: Colors.amber,
          ),
          width: screenWidth / 2.8,
          height: screenHeight / 4,
          child: Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            width: screenWidth / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15, shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                      offset: Offset(0, 5))
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
