// import 'package:daily_excercises_app/DetailsPage.dart';
import 'package:daily_excercises_app/homepage.dart';
import "package:flutter/material.dart";
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}