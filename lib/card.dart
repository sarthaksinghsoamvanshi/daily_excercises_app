import 'package:flutter/material.dart';

class Crado extends StatelessWidget {
  final index;
  final completed;
  const Crado({this.index, this.completed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(1, 1))],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      width: MediaQuery.of(context).size.width / 2 - 20,
      // color: Colors.amber,

      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: ListTile(
              title: Text("Session $index"),
              leading: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey,width: completed!=1? 1:0),
                  color: completed == 1 ? Color(0xFFC7B8F5) : Colors.white,
                ),
                child: Icon(Icons.play_arrow,color:completed == 1 ?  Colors.white:Color(0xFFC7B8F5) ,),
              )),
        ),
      ),
    );
  }
}
