import 'package:flutter/material.dart';
import 'package:hospital_app/pages/otp_verification.dart';
import 'package:hospital_app/widgets/button_widget.dart';

class MobileVerification extends StatefulWidget {
  @override
  _MobileVerificationState createState() => _MobileVerificationState();
}

class _MobileVerificationState extends State<MobileVerification> {
  final _loginKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _autoValidate = false;
  void _validateTF() {
    if (_loginKey.currentState.validate()) {
      _loginKey.currentState.save();
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Stack(
          children: <Widget>[
            Form(
              key: _loginKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                  ),
                  //      Image.asset(
                  //   'assets/images/logo/logo (1).png',
                  //   height: 500,
                  // ),
                  Center(
                    child: Text(
                      "Verify Mobile with OTP",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: new TextFormField(
                        keyboardType: TextInputType.text,
                        onChanged: (String textValue) {
                          print("Output: " + textValue);
                        },
                        enabled: true,
                        //controller: TextEditingController(text: "Default Values"),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Colors.black,
                          //     width: 0.8,
                          //   ),
                          //   borderRadius: BorderRadius.circular(30),
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Colors.orange,
                          //     width: 1,
                          //   ),
                          //   borderRadius: BorderRadius.circular(30),
                          // ),
                          labelText: "Your Number",
                          labelStyle: TextStyle(
                            color: Colors.teal[300],
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        // ignore: missing_return
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Enter your 10 digit mobile number !";
                          }

                          if (val.length < 10) {
                            return "number not valid !";
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  // margin: EdgeInsets.symmetric(
                  //   horizontal: 20,
                  // ),
                  child: BuildButton(
                    text: Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    btnColor: Colors.blueAccent,
                    onPressed: () {
                      if (_loginKey.currentState.validate() != false) {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => OtpVerification()),
                            (Route<dynamic> route) => false);
                      }
                    },
                  )),
            )
          ],
        )));
  }
}
