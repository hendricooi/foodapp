import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/GetPrice.dart';
import 'package:google_fonts/google_fonts.dart';

class Bawang extends StatefulWidget {
  @override
  State<Bawang> createState() => _Bawang();
}

class _Bawang extends State<Bawang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Roti Telur Bawang"),
        ),
        body: Body());
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Stack(children: [
          Container(
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage("assets/images/roti2.jpg"),
                  fit: BoxFit.contain),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.dstATop),
                  image: AssetImage("assets/images/watermark.PNG")),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
          ),
        ]),
        Container(
            child: GetPrice(7, "grab", "foodpanda", "deliver", "grabdeli",
                "pandadeli", "deliverdeli", "foodname", "image"))
      ]),
    );
  }
}
