import 'package:flutter/material.dart';

import '../../values/color.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Muncipality/Panchayath : ",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text("Kalliasseri",
                    style: Theme.of(context).textTheme.titleLarge),
                  
              ],
            ),
              SizedBox(
                      height: 40,
                    ),
                     Text(
                  "Team Members : ",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                      height: 10,
                    ),
                    Text("Member1",
                    style: Theme.of(context).textTheme.titleLarge),
                  Text(
                  "2656272763 ",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                      height: 10,
                    ),
                    Text("Member1",
                    style: Theme.of(context).textTheme.titleLarge),
                  Text(
                  "2656272763 ",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
          ],
        ),
      ),
    );
  }
}
