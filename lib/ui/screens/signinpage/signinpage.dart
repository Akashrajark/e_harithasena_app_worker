import 'package:e_harithasena_worker/ui/screens/homescreen/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../values/color.dart';
import '../../widgets/authbanner.dart';

import '../../widgets/custombutton.dart';

class SignInPage extends StatefulWidget {
  static const routename = 'signin';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final signinformkey = GlobalKey<FormState>();
  bool obs = true;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: signinformkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  const AuthBanner(
                    imgpath: 'assets/images/signin.svg',
                    title: "Harithasena Login",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                        label: Text(
                      "Email",
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        label: Text(
                          "Password",
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obs = !obs;
                              });
                            },
                            icon: Icon(obs
                                ? Icons.visibility
                                : Icons.visibility_off))),
                    obscureText: obs,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  CustomButton(
                      buttonText: "Sign In",
                      onPressed: () async {
                        try {
                          if (signinformkey.currentState!.validate()) {
                            UserCredential? usercred = await FirebaseAuth
                                .instance
                                .signInWithEmailAndPassword(
                                    email: emailcontroller.text.trim(),
                                    password: passwordcontroller.text.trim());
                                    Navigator.of(context).pushReplacementNamed(HomePage.routename);
                          }
                        } on FirebaseException catch (err) {
                          String? message;
                          if (err.code.isNotEmpty) {
                            message = err.code;
                          } else {
                            message = "An error occured,check your credentials";
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message),
                            ),
                          );
                        }
                      },
                      txtcolor: onPrimary),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
