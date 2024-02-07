import 'package:e_harithasena_worker/firebase_options.dart';
import 'package:e_harithasena_worker/ui/screens/detailsscreen/detailsscreen.dart';
import 'package:e_harithasena_worker/ui/screens/homescreen/homescreen.dart';
import 'package:e_harithasena_worker/ui/screens/signinpage/signinpage.dart';
import 'package:e_harithasena_worker/ui/screens/splashscreen/splashscreen.dart';
import 'package:e_harithasena_worker/ui/screens/unavailablehousesscreen/unavailablescreen.dart';
import 'package:e_harithasena_worker/ui/themes/apptheme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-harithasena workers',
      theme: appTheme,
      home: SplashScreen(),
      routes: {
        SignInPage.routename: (context) => const SignInPage(),
        HomePage.routename: (context) => const HomePage(),
        DetailScreen.routename: (context) => const DetailScreen(),
        UnavailableScreen.routename:(context)=> const UnavailableScreen()
      },
    );
  }
}
