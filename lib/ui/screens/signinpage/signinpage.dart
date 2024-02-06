
import 'package:flutter/material.dart';

import '../../values/color.dart';
import '../../widgets/authbanner.dart';

import '../../widgets/custombutton.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
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
                  decoration: const InputDecoration(
                      label: Text(
                    "Email",
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration:  InputDecoration(
                      label: Text(
                        "Password",
                      ),
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              obs=!obs;
                            });
                          }, icon: Icon(obs?Icons.visibility:Icons.visibility_off))),
                  obscureText: obs,
                ),
            
              
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                CustomButton(
                    buttonText: "Sign In",
                    onPressed: () {},
                    txtcolor: onPrimary),
               const SizedBox(
                height: 15,
               ),
               
              ],
            ),
          ),
        ),
      )),
    );
  }
}
