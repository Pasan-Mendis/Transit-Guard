import 'package:final_project_hnd/SignUp/consts.dart';
import 'package:final_project_hnd/main.dart';
import 'package:final_project_hnd/pages/Login/driver.dart';
import 'package:final_project_hnd/pages/Login/login_page.dart';
//import 'package:final_project_hnd/pages/Login/driver_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteProfile extends StatefulWidget {
  const DeleteProfile({super.key});

  @override
  _DeleteProfileState1 createState() => _DeleteProfileState1();
}

class _DeleteProfileState1 extends State<DeleteProfile> {
  bool _isSecurePassword2 = true;

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
                  "Delete your profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    color: kWhiteColor.withOpacity(1),
                  ),
                ),
                const SizedBox(height: 30),
                Image.asset(
                  'assets/images/delete-user.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: size.height * 0.020),
                TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: kInputColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    filled: true,
                    hintText: "User Name",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person_outline_sharp),
                    ),
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.011),
                TextField(
                  obscureText: _isSecurePassword2,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: kInputColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    filled: true,
                    hintText: "Password",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.key_outlined),
                    ),
                    suffixIcon: togglePassword(),
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.010),
                TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: kInputColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    filled: true,
                    hintText: "Driver ID",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.perm_identity_sharp),
                    ),
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: size.height * 0.080,
                      decoration: const BoxDecoration(
                        color: kButtonColor,
                        borderRadius: BorderRadius.all(Radius.circular(37)),
                      ),
                      child: const Text(
                        "Delete",
                        style: TextStyle(
                          color: kRedColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword2 = !_isSecurePassword2;
        });
      },
      icon: _isSecurePassword2
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.black,
    );
  }
}
