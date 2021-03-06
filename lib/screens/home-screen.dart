import 'package:flutter/material.dart';
import 'package:food_app/components/drawer.dart';
import 'package:food_app/screens/body.dart';
import 'package:food_app/services/auth_services.dart';
import 'package:provider/provider.dart';
import '../components/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      drawer: Drawertest(),
      body: Body(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 30,
                child: Row(
                  children: [
                    Icon(Icons.person),
                    Text('Welcome, User',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ))),
                  ],
                )),
            GestureDetector(
              onTap: () async {
                await authService.signOut();
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 3, right: 8),
                    child: Text("Sign Out",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ))),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Icon(Icons.exit_to_app_rounded)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
