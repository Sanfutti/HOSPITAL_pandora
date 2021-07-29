import 'package:flutter/material.dart';
import 'package:hospital_app/pages/confirmation_page2.dart';
import 'package:hospital_app/pages/dashboard.dart';

class ConfimationPage extends StatefulWidget {
  @override
  _ConfimationPageState createState() => _ConfimationPageState();
}

class _ConfimationPageState extends State<ConfimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AlertDialog(
          // To display the title it is optional
          content: Text(
              'Allow location to proceed'), // Message which will be pop up on the screen
          // Action widget which will provide the user to acknowledge the choice
          actions: [
            FlatButton(
              // FlatButton widget is used to make a text to work like a button
              textColor: Colors.black,
              onPressed:
                  () {}, // function used to perform after pressing the button
              child: Text('DENY'),
            ),
            FlatButton(
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfimationPage2()),
                );
              },
              child: Text('ALLOW'),
            ),
          ],
        ),
      ),
    );
  }
}
