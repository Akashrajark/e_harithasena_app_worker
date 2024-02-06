
import 'package:flutter/material.dart';

import '../values/color.dart';


class AuthFooter extends StatelessWidget {
  final String text,buttontext;
  final void Function()? action;

  const AuthFooter({
    super.key, required this.text, required this.buttontext, this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: textColor)),
        TextButton(
            onPressed: action,
            child: Text(buttontext,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: primaryColor)))
      ],
    );
  }
}