import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:math' as math;

class DashBoard2 extends StatefulWidget {
  @override
  _DashBoard2State createState() => _DashBoard2State();
}

class _DashBoard2State extends State<DashBoard2>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 0.0,
      duration: Duration(seconds: 25),
      upperBound: 1,
      lowerBound: -1,
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: [
              Container(
                height: height * .2,
                decoration: BoxDecoration(
                    color: Colors.tealAccent[700],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              // SizedBox(
              //   height: 300,
              // ),
              Positioned(
                  top: 150,
                  // bottom: 200,
                  right: 0.5,
                  left: 0.5,
                  //left: width * 3,
                  child: Column(children: [
                    // Container(
                    //   width: 450,
                    //   child: Text(
                    //     'India,s 1st\nPro-active healthcare management program',
                    //     style: TextStyle(
                    //         fontStyle: FontStyle.italic,
                    //         fontSize: 20,
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.white // italic
                    //         ),
                    //   ),
                    // ),
                    Container(
                      height: 150,
                      width: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
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
                  ])),
              // AnimatedBuilder(
              //   animation: _controller,
              //   builder: (BuildContext context, Widget child) {
              //     return ClipPath(
              //       clipper: DrawClip(_controller.value),
              //       child: Container(
              //         height: size.height * 0.35,
              //         decoration: BoxDecoration(
              //           gradient: LinearGradient(
              //               begin: Alignment.bottomLeft,
              //               end: Alignment.topRight,
              //               colors: [
              //                 Colors.blue,
              //                 Color(0xFF303F9F),
              //               ]),
              //         ),
              //       ),
              //     );
              //   },
              // ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
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
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
              ]),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80.0,
                  width: 500,
                  child: Container(
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
                    width: MediaQuery.of(context).size.width,
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              color: Colors.black // italic
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
                SizedBox(
                  height: 25,
                ),
                Container(
                    height: 80.0,
                    // width: 500,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.tealAccent[700],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height * .4,
                          width: width * .45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                color: Colors.grey[400],
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height * .4,
                          width: width * .45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 80.0,
                  width: 500,
                  child: Container(
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
                    width: MediaQuery.of(context).size.width,
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(0.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  height: height / 4,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                SizedBox(height: 10),
                Container(
                    height: 80.0,
                    // width: 500,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.tealAccent[700],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height * .500,
                          width: width * .45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                color: Colors.grey[400],
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height * .500,
                          width: width * .45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                SizedBox(height: 10),
                Container(
                    height: 80.0,
                    // width: 500,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.tealAccent[700],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height * .500,
                          width: width * .45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                color: Colors.grey[400],
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: Offset(
                                    0.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          height: height * .500,
                          width: width * .45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ],
            ),
          )
        ],
      )),
    );
  }

  Container buildExpenseBotton(IconData icon, String title, bool isActive) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? Color(0XFF00B686) : Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isActive ? Color(0XFF00B686) : Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _ownerCard(String path, String name) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 10.0),
        height: 150,
        child: Column(
          children: <Widget>[
            Card(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              elevation: 3.0,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(path),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 0.0),
              child: Text(name,
                  style: Theme.of(context).accentTextTheme.headline1),
            ),
          ],
        ),
      ),
    );
  }

  Widget _employeeCard(String path, String name) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'employee');
      },
      child: Container(
        padding: EdgeInsets.only(left: 10.0),
        child: Card(
          child: Container(
            width: 100,
            child: Column(
              children: <Widget>[
                Card(
                  child: Container(
                    height: 100,
                    width: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(path),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Container(
                  height: 20,
                  padding: EdgeInsets.only(left: 0.0),
                  child: Text(name,
                      style: Theme.of(context).accentTextTheme.headline1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String imgPath, String name) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 80,
          child: Card(
            semanticContainer: true,
            elevation: 2.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Hero(
                        tag: imgPath,
                        child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.contain,
                          height: 60.0,
                          width: 60.0,
                        ),
                      ),
                      SizedBox(width: 34.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(name,
                              style:
                                  Theme.of(context).accentTextTheme.headline2),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    color: Theme.of(context).accentIconTheme.color,
                    iconSize: Theme.of(context).accentIconTheme.size,
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text("Booked Customers"),
      titleSpacing: 10,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg",
            color: Theme.of(context).accentColor),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",
              color: Theme.of(context).accentColor),
          onPressed: () {},
        ),
      ],
    );
  }

  Container buildCategoryCard(
      String img, String title, String details, String time) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.white,
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue,
              Colors.blue[200],
            ],
          )),
      // height: 200,
      // width: MediaQuery.of(context).size.width / 1.7,
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(img),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              // Text(
              //   time + " Mins",
              //   style: TextStyle(
              //       fontSize: 12,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white),
              // )
            ],
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Appoinment for :",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                details,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              // SizedBox(
              //   width: 20,
              // ),
              //buildColumn2(),
            ],
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Send"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Report"),
      content: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        style: TextStyle(
            fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Add report',
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Row buildColumn2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      // padding: const EdgeInsets.all(1.0),
      children: <Widget>[
        Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.red[200],
                ),
                iconSize: 35,
                // color: Theme.of(context).accentIconTheme.color,
                // iconSize: Theme.of(context).accentIconTheme.size,
                onPressed: () {
                  showAlertDialog(context);
                })
            //  RaisedButton(
            //   padding: const EdgeInsets.all(1.0),
            //   child: Text(
            //     title,
            //     textAlign: TextAlign.center,
            //   ),
            //   onPressed: () {},
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   color: Colors.white,
            // ),
            ),
        SizedBox(
          width: 30,
        ),
        Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
                icon: Icon(Icons.check, color: Colors.green[500]),
                iconSize: 35,
                // color: Theme.of(context).accentIconTheme.color,
                // iconSize: Theme.of(context).accentIconTheme.size,
                onPressed: () {})
            //  RaisedButton(
            //   padding: const EdgeInsets.all(1.0),
            //   child: Text(
            //     title,
            //     textAlign: TextAlign.center,
            //   ),
            //   onPressed: () {},
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   color: Colors.white,
            // ),
            ),
      ],
    );
  }

  Widget _buildFirm(String imgPath, String name, String number, String root) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Bookings()));
        },
        child: Container(
          height: 100,
          // width: 170,

          child: Card(
            semanticContainer: true,
            elevation: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.contain,
                        height: 50.0,
                        width: 50.0,
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          Text(
                            number,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawClip extends CustomClipper<Path> {
  double move = 0;
  double slice = math.pi;
  DrawClip(this.move);
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    double xCenter =
        size.width * 0.5 + (size.width * 0.6 + 1) * math.sin(move * slice);
    double yCenter = size.height * 0.8 + 69 * math.cos(move * slice);
    path.quadraticBezierTo(xCenter, yCenter, size.width, size.height * 0.8);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
