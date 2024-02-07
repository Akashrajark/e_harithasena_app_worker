import 'package:flutter/material.dart';

import '../../values/color.dart';

class DetailScreen extends StatelessWidget {
  static const routename = 'detailscreen';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: onPrimary,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        automaticallyImplyLeading: true,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          "Pickup Details",
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
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
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
              height: 5,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
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
            Text("Member1", style: Theme.of(context).textTheme.titleLarge),
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
            Text("Member1", style: Theme.of(context).textTheme.titleLarge),
            Text(
              "2656272763 ",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: 5,
            ),
             Divider(thickness: 2,color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
