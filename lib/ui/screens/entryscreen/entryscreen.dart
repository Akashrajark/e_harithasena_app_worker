import 'package:e_harithasena_worker/ui/values/color.dart';
import 'package:e_harithasena_worker/ui/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatefulWidget {
  static const routename='entryscreen';
  const EntryScreen({super.key});

  @override
 State<EntryScreen>  createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController houseNoController = TextEditingController();
  final TextEditingController wardNoController = TextEditingController();
  final TextEditingController municipalityController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  bool _validate = false;

  void _addEntry() {
    if (nameController.text.isEmpty ||
        houseNoController.text.isEmpty ||
        wardNoController.text.isEmpty ||
        municipalityController.text.isEmpty ||
        weightController.text.isEmpty ||
        amountController.text.isEmpty) {
      setState(() {
        _validate = true;
      });
      return;
    }

    
    DateTime now = DateTime.now();
    String date = "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}";

   
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Entry added successfully.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Entry'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller: houseNoController,
              decoration: InputDecoration(
                labelText: 'House No',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
              SizedBox(height: 15,),
            TextField(
              controller: wardNoController,
              decoration: InputDecoration(
                labelText: 'Ward No',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
              SizedBox(height: 15,),
            TextField(
              controller: municipalityController,
              decoration: InputDecoration(
                labelText: 'Municipality/Panchayath',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
              SizedBox(height: 15,),
            TextField(
              controller: weightController,
              decoration: InputDecoration(
                labelText: 'Weight',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),
              SizedBox(height: 15,),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
                errorText: _validate ? 'Value Can\'t Be Empty' : null,
              ),
            ),

            SizedBox(height: 20.0),
           CustomButton(buttonText: "Add Entry", onPressed:_addEntry, txtcolor: onPrimary)
          ],
        ),
      ),
    );
  }
}
