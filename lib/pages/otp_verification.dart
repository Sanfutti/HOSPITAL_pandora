import 'package:flutter/material.dart';
import 'package:hospital_app/pages/confirmation_page.dart';
import 'package:hospital_app/widgets/button_widget.dart';
import 'package:otp_screen/otp_screen.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class OtpVerification extends StatefulWidget {
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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

  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  // action to be performed after OTP validation is success
  void moveToNextScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ConfimationPage()));
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
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                  ),
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
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PinEntryTextField(
                        showFieldAsBox: false,
                        onSubmit: (String pin) {
                          //end showDialog()
                        }, // end onSubmit
                      ), // end PinEntryTextField()
                    ), // end Padding()
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Be verifying Iam agreed to \ndisclaimer,cookies & privacy policy",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Read all',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.teal[300]),
                        )
                      ],
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
                                builder: (context) => ConfimationPage()),
                            (Route<dynamic> route) => false);
                      }
                    },
                  )),
            )
          ],
        )));
  }
}
