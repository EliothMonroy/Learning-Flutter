import 'package:flutter/material.dart';
import 'package:platzi_trips_app/list_stars.dart';

class DescriptionPlace extends StatelessWidget{

  //Atributos para una clase genérica
  String namePlace;
  double stars;
  String descriptionPlace;

  //Definimos un constructor
  DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    //Texto de descripción
    final description=Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        this.descriptionPlace,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff56575a)
        ),
      ),
    );

    final title_starts=Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            this.namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w700
            ),
            textAlign: TextAlign.left,
          ),
        ),
        StarList(this.stars,0,0)
      ],
    );

    //Retornamos el elemento creado
    return Column(
      children: <Widget>[
        title_starts,
        description
      ],
    );
  }

}