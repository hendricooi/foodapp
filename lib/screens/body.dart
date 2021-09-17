import 'package:flutter/material.dart';
import 'package:food_app/components/foodoption.dart';
import 'package:food_app/components/search.dart';
import 'package:food_app/screens/Offer/delivereatoffer.dart';
import 'package:food_app/screens/desserts.dart';
import 'package:food_app/screens/drinks.dart';
import 'package:food_app/screens/fastfood.dart';
import 'package:food_app/screens/Offer/foodpandaoffer.dart';
import 'package:food_app/screens/Offer/graboffer.dart';
import 'package:food_app/screens/localfood.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            search(
              onChanged: (value) {},
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("Categories",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            ),
            Container(
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fastfood()),
                        );
                      },
                      child:
                          Foodoption("assets/images/burger.jpeg", "Fast Food")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Drinks()),
                        );
                      },
                      child: Foodoption("assets/images/drinks.jpg", "Drinks")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Desserts()),
                        );
                      },
                      child:
                          Foodoption("assets/images/dessert.png", "Desserts")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Localfood()),
                        );
                      },
                      child: Foodoption("assets/images/local.jpg", "Local")),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text("Offer & Discounts",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Graboffer()),
                            );
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/grab.jpg",
                                ),
                                Positioned(
                                  bottom: 4,
                                  left: 10,
                                  child: Text("Enjoy 20% OFF with Self Pick-Up",
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ))),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Foodpandaoffer()),
                            );
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/foodpanda.jpg",
                                  height: 125,
                                  fit: BoxFit.fill,
                                  width: 175,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => delivereatoffer()),
                            );
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/local.PNG",
                                  height: 125,
                                  fit: BoxFit.fill,
                                  width: 175,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
