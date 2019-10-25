import 'package:flutter/material.dart';

import 'list_stars.dart';

class Review extends StatelessWidget{

  String pathImage="assets/img/elioth.jpg";
  String name="Elioth Monroy";
  String details="1 review 5 photos";
  String comment="A beautiful place";

  Review(this.pathImage, this.name, this.details,this.comment);

  @override
  Widget build(BuildContext context) {

    final photo=Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userName=Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        //bottom: 5.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userInfo=Container(
      margin: EdgeInsets.only(
        top: 0.0,
        left: 20.0,
        bottom: 5.0
      ),
      child: Row(
        children: <Widget>[
          Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xffa3a5a7)
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                left: 10.0
              ),
              child: Row(
                children: <Widget>[
                  StarList(4.5,323,10)
                ],
              )
          )
        ],
      )
    );

    final userComment=Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 5.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userDetails=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}