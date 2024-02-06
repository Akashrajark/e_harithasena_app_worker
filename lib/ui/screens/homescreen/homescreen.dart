import 'package:e_harithasena_worker/ui/values/color.dart';
import 'package:e_harithasena_worker/ui/widgets/custombutton.dart';
import 'package:e_harithasena_worker/ui/widgets/customcard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
                  onTap: () {}),
              CustomCard(
                  image: 'assets/images/house.jpg',
                  label: "Unavailable Houses",
                  onTap: () {}),
              CustomCard(
                  image: 'assets/images/phone.jpg',
                  label: "Add Entries",
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
