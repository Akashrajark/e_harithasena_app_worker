import 'dart:async';

import 'package:e_harithasena_worker/ui/screens/signinpage/signinpage.dart';
import 'package:e_harithasena_worker/ui/values/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../homescreen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null &&
          currentUser.uid == FirebaseAuth.instance.currentUser!.uid) {
        Navigator.pushNamedAndRemoveUntil(
            context, HomePage.routename, (route) => false);
      }else{
         Navigator.pushNamedAndRemoveUntil(
            context, SignInPage.routename, (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Text("HarithaSena",
            style: GoogleFonts.pacifico(
                textStyle: Theme.of(context).textTheme.headlineMedium!)),
      ),
    );
  }
}
