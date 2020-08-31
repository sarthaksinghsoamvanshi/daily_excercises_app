import 'package:daily_excercises_app/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  final image;
  final text;

  const DetailsPage({this.image, this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 55,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Column(
                children: [
                  SvgPicture.asset("images/calendar.svg", color: Colors.black),
                  Text("Calendar", style: TextStyle(color: Colors.black))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Column(
                children: [
                  SvgPicture.asset("images/gym.svg", color: Colors.orange),
                  Text("Excercises", style: TextStyle(color: Colors.orange))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              child: Column(
                children: [
                  SvgPicture.asset("images/Settings.svg", color: Colors.black),
                  Text("Settings", style: TextStyle(color: Colors.black))
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
              color: Color(0xFFC7B8F5),
              image: DecorationImage(
                image: AssetImage("images/meditation_bg.png"),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Container(
                  height: 50,
                  // color: Colors.amber,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  // color: Colors.amber,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$text\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    height: 20,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    // color: Colors.blue,
                    child: RichText(
                      text: TextSpan(
                        text: "3-10 Min Course\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  // color: Colors.green,
                  child: RichText(
                      text: TextSpan(
                    text:
                        "Live Happier and Helathier by Learning \nthe Fundamentals of Mindfullness and\nMeditation",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.search),
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                                hintText: "Search"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        runSpacing: 20,
                        // spacing: 10,
                        children: [
                          Crado(
                            index: 1,
                            completed: 1,
                          ),
                          Crado(
                            index: 2,
                          ),
                          Crado(
                            index: 3,
                          ),
                          Crado(
                            index: 4,
                          ),
                          Crado(
                            index: 5,
                          ),
                          Crado(
                            index: 6,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          text,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.white,
                          child: ListTile(
                            title: Text("Basic 2"),
                            leading: SvgPicture.asset(image),
                            subtitle: Text("Start the practice"),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
