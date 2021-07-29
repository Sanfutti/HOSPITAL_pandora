import 'package:flutter/material.dart';
import 'package:hospital_app/pages/dashboard.dart';
import 'package:hospital_app/pages/dashboard2.dart';

class ConfimationPage2 extends StatefulWidget {
  @override
  _ConfimationPage2State createState() => _ConfimationPage2State();
}

class _ConfimationPage2State extends State<ConfimationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AlertDialog(
          // To display the title it is optional
          content: Text(
              'Allow Camera to proceed'), // Message which will be pop up on the screen
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
                  MaterialPageRoute(builder: (context) => DashBoard2()),
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
