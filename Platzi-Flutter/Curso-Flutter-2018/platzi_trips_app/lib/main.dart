import 'package:flutter/material.dart';//Widgets de Material Design provistos por el SDK de Flutter
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/gradient_background.dart';
import 'package:platzi_trips_app/review.dart';
import 'package:platzi_trips_app/review_list.dart';

void main() => runApp(MyApp());//Método main de ejecución

//Texto dummy descripción
final descriptionDummy="Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
    "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
    "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
    "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia "
    "deserunt mollit anim id est laborum.";


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //Título del task manager
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: //MyHomePage(title: 'Flutter Demo Home Page'), //título visto en la app
        Scaffold(
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  DescriptionPlace("Duwili Ella",4.5,descriptionDummy),
                  ReviewList(),
                ],
              ),
              GradientBackground(),
            ],
          )

//          SingleChildScrollView(
//            child:Column(
//              children: <Widget>[
//                DescriptionPlace("Duwili Ella",4.5,descriptionDummy),
//                ReviewList(),
//              ],
//            )
//          )

        )
    );
  }
}