import 'package:final_project_hnd/main.dart';
import 'package:final_project_hnd/pages/Login/driver_profile.dart';
import 'package:final_project_hnd/pages/Login/parentLogin.dart';
import 'package:flutter/material.dart';
import 'package:final_project_hnd/SignUp/consts.dart';

class Parent extends StatelessWidget {
  const Parent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: g1,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: AppBar(
            backgroundColor: g1,
            leading: Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const HomeWithDrawer1(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(-1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var offdetAnimation = animation.drive(tween);
                            return SlideTransition(
                                position: offdetAnimation, child: child);
                          },
                        ),
                      );
                    },
                    color: Colors.white,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                );
              },
            ),
          ),
        ),
        body: const Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0.5, left: 80),
              child: Row(
                children: [
                  Text(
                    "Parent Details",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      fontFamily: "SF-Pro-Text ",
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 100,
                left: 100,
                right: 100,
                bottom: 10,
              ),
              child: Image(image: AssetImage('assets/images/user.png')),
            ),
            Padding(
              padding: EdgeInsets.only(top: 270),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your ID ",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF-Pro-Text",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),

                            Text(
                              "First Name ",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF-Pro-Text",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),

                            Text(
                              "Date of Birth",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF-Pro-Text",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),

                            Text(
                              "NIC",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF-Pro-Text",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),

                            Text(
                              "Telephone ",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF-Pro-Text",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),

                            Text(
                              "Username ",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF-Pro-Text",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),

                            // Text("Password ",style: TextStyle(
                            // color: Color.fromARGB(255, 255, 255, 255),
                            // fontFamily: "",
                            // fontSize: 20,
                            // ),),
                            // SizedBox(height:8 ),

                            Text(
                              "Email ",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: "SF-Pro-Text",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      )),

                  //left side details starting point
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "D1 ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SF-Pro-Text",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),

                          Text(
                            "Sasika Chandila ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SF-Pro-Text",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),

                          Text(
                            "1999-03-12 ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SF-Pro-Text",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),

                          Text(
                            "990723915V ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SF-Pro-Text",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),

                          Text(
                            "0770864513 ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SF-Pro-Text",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),

                          Text(
                            "sasi ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SF-Pro-Text",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),

                          // Text("sasi ",style: TextStyle(
                          // color: Color.fromARGB(255, 255, 255, 255),
                          // fontFamily: "",
                          // fontSize: 20,
                          // ),),
                          // SizedBox(height:8 ),

                          Text(
                            "sasikachandila@gmail.com",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "SF-Pro-Text",
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
