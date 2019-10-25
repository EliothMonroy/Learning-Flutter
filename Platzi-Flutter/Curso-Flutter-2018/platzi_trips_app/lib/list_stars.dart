import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarList extends StatelessWidget{

  double stars;
  double position;
  double sizeStar;
  StarList(this.stars,this.position,this.sizeStar);


  @override
  Widget build(BuildContext context) {

    final int totalFullStars=stars.floor();
    final bool hasHalfStar=stars%1 !=0 ? true:false;
    final int totalEmptyStars=hasHalfStar ? 5-stars.round() : 5-stars.toInt();
    double size=22.0-sizeStar;

    List<Widget> starList=[];

    //Icono de estrella lleno
    final star=Container(
      margin: EdgeInsets.only(
          top: 323.0-position,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        size: size,
        color: Color(0xfff2c611),
      ),
    );

    //Icono de media estrella
    final half_start=Container(
      margin: EdgeInsets.only(
          top: 323.0-position,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        size: size,
        color: Color(0xfff2c611),
      ),
    );

    //Icono de estrella
    final empty_star=Container(
      margin: EdgeInsets.only(
          top: 323.0-position,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        size: size,
        color: Color(0xfff2c611),
      ),
    );

    for(int i=0;i<totalFullStars;i++) {starList.add(star);}
    if(hasHalfStar){starList.add(half_start);}
    for(int i=0;i<totalEmptyStars;i++){starList.add(empty_star);}

    return Row(
      children: starList,
    );
  }
}

//starList
//List<Widget>.generate(5, (x) => star)