import 'package:final_project_hnd/SignUp/consts.dart';
import 'package:final_project_hnd/main.dart';
import 'package:final_project_hnd/pages/Login/delete_profile.dart';
import 'package:final_project_hnd/pages/Login/login_page.dart';
import 'package:final_project_hnd/pages/Login/update_profile.dart';
import 'package:final_project_hnd/pages/Login/driver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverProfile extends StatelessWidget {
  const DriverProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const HomeWithDrawer(),
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
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [g1, g2]),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(size.height * 0.020),
            child: Column(
              children: [
                Text(
                  "Driver Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    color: kWhiteColor.withOpacity(1),
                  ),
                ),
                SizedBox(height: size.height * 0.08),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: size.height * 0.100,
                      decoration: const BoxDecoration(
                        color: kButtonColor,
                        borderRadius: BorderRadius.all(Radius.circular(37)),
                      ),
                      child: const Text(
                        "Driver Details",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const Driver(),
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
                    }),
                SizedBox(height: size.height * 0.03),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: size.height * 0.100,
                      decoration: const BoxDecoration(
                        color: kButtonColor,
                        borderRadius: BorderRadius.all(Radius.circular(37)),
                      ),
                      child: const Text(
                        "Update Profile",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
                    }),
                SizedBox(height: size.height * 0.03),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: size.height * 0.100,
                      decoration: const BoxDecoration(
                        color: kButtonColor,
                        borderRadius: BorderRadius.all(Radius.circular(37)),
                      ),
                      child: const Text(
                        "Delete Profile",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const DeleteProfile(),
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
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
