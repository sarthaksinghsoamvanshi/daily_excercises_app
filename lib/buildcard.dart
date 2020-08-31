import 'package:daily_excercises_app/DetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildCard extends StatelessWidget {
  final image;
  final text;
  final function;

  const BuildCard({this.image, this.text,this.function});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
            )
          ],
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(13))),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(
              image:image,
              text:text,
            )));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: SvgPicture.asset(image),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
