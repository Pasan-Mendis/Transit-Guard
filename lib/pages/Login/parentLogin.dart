import 'package:final_project_hnd/SignUp/consts.dart';
import 'package:final_project_hnd/pages/Login/delete_profile.dart';
import 'package:final_project_hnd/pages/Login/driver.dart';
import 'package:final_project_hnd/pages/Login/driver_profile.dart';
import 'package:final_project_hnd/pages/Login/login_page.dart';
import 'package:final_project_hnd/pages/Login/login_pagep.dart';
import 'package:final_project_hnd/pages/Login/parent.dart';
import 'package:final_project_hnd/pages/Login/parent_delete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWithDrawer1 extends StatefulWidget {
  const HomeWithDrawer1({Key? key}) : super(key: key);

  @override
  _HomeWithDrawerState createState() => _HomeWithDrawerState();
}

class _HomeWithDrawerState extends State<HomeWithDrawer1> {
  bool showUserOptions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: g1,
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                  color: g1, borderRadius: BorderRadius.circular(10.0)),
              child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                color: Colors.white,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: cButtonColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 70, top: 50),
              child: Text(
                'TransitGuard',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'RobotoSlab'),
              ),
            ),

            Container(
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
            ),

            Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: showUserOptions ? 60 : 50,
                  child: ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Row(
                      children: [
                        const Text(
                          'Child Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        const SizedBox(width: 30),
                        Transform.translate(
                          offset: const Offset(0, 0),
                          child: showUserOptions
                              ? const Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.black,
                                  size: 32,
                                )
                              : const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                  size: 32,
                                ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        showUserOptions = !showUserOptions;
                      });
                    },
                  ),
                ),
              ],
            ),
            // Add the additional user options
            if (showUserOptions)
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(left: 90.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      title: const Text(
                        'Parent Details',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, Animation, secondaryAnimation) =>
                                    const Parent(),
                            transitionsBuilder: (context, Animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.easeInOutQuart;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var offsetAnimation = Animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Update Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, Animation, secondaryAnimation) =>
                                    const ParentLoginPagep(),
                            transitionsBuilder: (context, Animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.easeInOutQuart;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var offsetAnimation = Animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Delete Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, Animation, secondaryAnimation) =>
                                    const ParentDeleteProfile(),
                            transitionsBuilder: (context, Animation,
                                secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.easeInOutQuart;

                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var offsetAnimation = Animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 3),
            ListTile(
              leading: const Icon(
                Icons.group,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Driver Details',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation, secondaryAnimation) =>
                        const DriverProfile(),
                    transitionsBuilder:
                        (context, Animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOutQuart;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = Animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.location_city,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Location',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation, secondaryAnimation) =>
                        const DriverProfile(),
                    transitionsBuilder:
                        (context, Animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOutQuart;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = Animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.route,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Journey',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation, secondaryAnimation) =>
                        const DriverProfile(),
                    transitionsBuilder:
                        (context, Animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOutQuart;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = Animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation, secondaryAnimation) =>
                        const DriverProfile(),
                    transitionsBuilder:
                        (context, Animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOutQuart;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = Animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.report,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Report',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation, secondaryAnimation) =>
                        const DriverProfile(),
                    transitionsBuilder:
                        (context, Animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOutQuart;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = Animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, Animation, secondaryAnimation) =>
                        const DriverProfile(),
                    transitionsBuilder:
                        (context, Animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOutQuart;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = Animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: const HomeScreen(), // Replace with your home screen widget
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: g1,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Positioned(
            top: 180,
            child: Text(
              'TransitGuard',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
                fontFamily: 'RobotoSlab',
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0, -0.3),
            child: Text(
              'Welcome Pasan Mendis !',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const Align(
            alignment: Alignment(-0.68, -0.2),
            child: Text(
              'Select or create a',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          const Align(
            alignment: Alignment(0.7, -0.2),
            child: Text(
              'Student Account',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: Colors.yellow, // Change color to yellow
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 350, // Adjust the top position of the first button
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle button tap
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(cButtonColor),
                    minimumSize:
                        MaterialStateProperty.all<Size>(Size(169, 219)),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/boy.png',
                          width: 75, height: 151)
                    ],
                  ),
                ),

                const SizedBox(width: 16), // Adjust the spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle button tap
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(cButtonColor),
                    minimumSize:
                        MaterialStateProperty.all<Size>(Size(169, 219)),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/boy.png',
                          width: 75, height: 151)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment(-0.7, 0.755),
            child: Text(
              'Select or create a',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 60,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              // child: Container(
              //   alignment: const Alignment(7, 0),
              //   width: size.width * 0.5,
              //   height: size.height * 0.100,
              //   decoration: const BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(37),
              //     ),
              //   ),
              //   child: const Text(
              //     "Student Account",
              //     style: TextStyle(
              //       fontStyle: FontStyle.italic,
              //       color: kButtonColor,
              //       fontSize: 25,
              //       fontWeight: FontWeight.w500,
              //       decoration: TextDecoration.underline,
              //     ),
              //   ),
              // ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const LoginPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
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
              child: Container(
                alignment: const Alignment(6, 0),
                width: size.width * 0.5,
                height: size.height * 0.100,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(37),
                  ),
                ),
                child: const Text(
                  "Student Account",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: kButtonColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
