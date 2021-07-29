import 'package:flutter/material.dart';
import 'package:hospital_app/widgets/badge.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: height * .2,
                      decoration: BoxDecoration(
                          color: Colors.tealAccent[700],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                  ],
                ),
                Positioned(
                  top: 50,
                  // bottom: 200,
                  right: 0.5,
                  left: 0.5,
                  //left: width * 3,
                  child: Column(
                    children: [
                      Container(
                        width: 450,
                        child: Text(
                          'India,s 1st\nPro-active healthcare management program',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white // italic
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 150,
                        width: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  0.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/images/icon-social.png',
                                    height: 40,
                                    width: 40,
                                    //height: 500,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Consult\n doctor Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/images/beaker@2x.png',
                                    height: 40,
                                    width: 40,
                                    //height: 500,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Consult\n doctor Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/images/drugs@2x.png',
                                    height: 40,
                                    width: 40,
                                    //height: 500,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Consult\n doctor Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 80.0,
                          width: 500,
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.deepPurpleAccent[100],
                                    Colors.blueAccent[700]
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              constraints: BoxConstraints(
                                  maxWidth: 300.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    "Link Corporate Membership",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white // italic
                                        ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    size: 40,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                            height: 80.0,
                            width: 500,
                            //color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.tealAccent[700],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(0.0,
                                            2.0), // shadow direction: bottom right
                                      )
                                    ],
                                  ),
                                  height: height * .4,
                                  width: width * .45,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          'assets/images/image2.jpg',
                                          height: 40,
                                          width: 40,
                                          //height: 500,
                                        ),
                                        Text(
                                          "Chronic Disease\nManagement",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              //fontSize: 1,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white // italic
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: Colors.tealAccent[700],
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                        offset: Offset(0.0,
                                            2.0), // shadow direction: bottom right
                                      )
                                    ],
                                  ),
                                  height: height * .4,
                                  width: width * .45,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.people,
                                        size: 40.0,
                                        //height: 500,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "My Family\nMembers",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            //fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white // italic
                                            ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 80.0,
                          width: 500,
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.blueGrey[900],
                                    Colors.tealAccent[700]
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              constraints: BoxConstraints(
                                  maxWidth: 300.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    "Current Health Status & History",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white // italic
                                        ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    size: 40,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height / 4,
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Start Video Consultation\nWith Expert @ HealthAssist",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black // italic
                                        ),
                                  ),
                                  Text(
                                    "Share Your health concerns\nwith jusr a click away",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black // italic
                                        ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/images/image2.jpg',
                                height: 100,
                                width: 100,
                                //height: 500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height / 4,
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Start Video Consultation\nWith Expert @ HealthAssist",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black // italic
                                        ),
                                  ),
                                  Text(
                                    "Share Your health concerns\nwith jusr a click away",
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black // italic
                                        ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/images/image2.jpg',
                                height: 100,
                                width: 100,
                                //height: 500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _appBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.tealAccent[700],
    title: Text(
      "HI Rohan Kumar",
    ),
    //titleSpacing: 10,
    leading: Icon(Icons.menu),
    actions: <Widget>[
      Icon(Icons.person_rounded),
      SizedBox(
        width: 35,
      ),
      Badge(
          top: 8,
          right: 8,
          value: "10",
          child: IconButton(icon: Icon(Icons.notifications), onPressed: () {})),
      SizedBox(
        width: 35,
      ),
    ],
  );
}
