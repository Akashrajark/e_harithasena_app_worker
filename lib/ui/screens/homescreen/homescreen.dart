import 'package:e_harithasena_worker/ui/screens/detailsscreen/detailsscreen.dart';
import 'package:e_harithasena_worker/ui/screens/signinpage/signinpage.dart';
import 'package:e_harithasena_worker/ui/screens/unavailablehousesscreen/unavailablescreen.dart';
import 'package:e_harithasena_worker/ui/values/color.dart';
import 'package:e_harithasena_worker/ui/widgets/custombutton.dart';
import 'package:e_harithasena_worker/ui/widgets/customcard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routename = 'homepage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    SignInPage.routename, (route) => false);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          "Haristhasena",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomCard(
                image: 'assets/images/route.jpg',
                label: "Pickup details",
                onTap: () {
                  Navigator.pushNamed(context, DetailScreen.routename);
                }),
            CustomCard(
                image: 'assets/images/house.jpg',
                label: "Unavailable Houses",
                onTap: () {
                  Navigator.pushNamed(context, UnavailableScreen.routename);
                }),
            CustomCard(
                image: 'assets/images/phone.jpg',
                label: "Add Entries",
                onTap: () {
                
                })
          ],
        ),
      ),
    );
  }
}
