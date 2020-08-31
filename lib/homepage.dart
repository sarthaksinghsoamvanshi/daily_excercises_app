import 'package:daily_excercises_app/buildcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                image: AssetImage("images/firstback.png"),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF5BEA1),
                      ),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 52,
                      width: 52,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        "images/menu.svg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  // color: Colors.amber,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Good Morning \n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "Sarthak",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: 50,
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
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      BuildCard(
                          image: "images/Hamburger.svg",
                          text: "Dieting Recommendation"),
                      BuildCard(
                          image: "images/Excrecises.svg",
                          text: "Kegel Excercises"),
                      BuildCard(
                          image: "images/Meditation_women_small.svg",
                          text: "Meditation"),
                      BuildCard(image: "images/yoga.svg", text: "Yoga"),
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