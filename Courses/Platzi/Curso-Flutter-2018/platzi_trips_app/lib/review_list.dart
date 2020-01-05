import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget{

  String pathImage="assets/img/elioth.jpg";
  String name="Elioth Monroy";
  String details="1 review 5 photos";
  String comment="A beautiful place";

  final int total_reviews=5;
  List<Review> listaReviews=[];

  @override
  Widget build(BuildContext context) {
    for(int i=0;i<total_reviews;i++){
      listaReviews.add(Review(pathImage,name+(i+1).toString(),details+(i+1).toString(),comment+(i+1).toString()));
    }
    return Column(
      children: listaReviews,
    );
  }

}