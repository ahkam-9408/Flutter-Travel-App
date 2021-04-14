import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  final String iconBlue;
  final String iconWhite;
  final String imageText;

  const ActivityCard(
      {@required this.iconBlue,
      @required this.iconWhite,
      @required this.imageText});

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: screenHeight / 32,
          right: screenWidth / 25,
        ),
        child: Container(
          width: screenWidth / 3.5,
          height: screenHeight / 5.35,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: isSelected ? Color(0XFF0172c0) : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0XFF0172c0), width: 2)),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(bottom: 8),
                  child: isSelected?Image.asset('assets/icons/${widget.iconWhite}'):Image.asset('assets/icons/${widget.iconBlue}')),
              Text(
                widget.imageText,
                style: TextStyle(
                    color: isSelected?Colors.white:Color(0XFF0172c0), fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
