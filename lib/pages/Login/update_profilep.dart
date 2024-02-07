import 'package:final_project_hnd/SignUp/consts.dart';
import 'package:final_project_hnd/main.dart';
import 'package:final_project_hnd/pages/Login/login_page.dart';
import 'package:final_project_hnd/pages/Login/parentLogin.dart';
import 'package:final_project_hnd/pages/Login/update_profiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateProfileP extends StatefulWidget {
  const UpdateProfileP({super.key});

  @override
  _LoginPageState1 createState() => _LoginPageState1();
}

class _LoginPageState1 extends State<UpdateProfileP> {
  bool _isSecurePassword1 = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Your details",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: kWhiteColor.withOpacity(0.7),
          ),
        ),
        backgroundColor: g1,
        leading: Container(
          decoration: BoxDecoration(
            color: kButtonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(8.0),
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
            padding: EdgeInsets.all(size.height * 0.010),
            child: Column(
              children: [
                // Text(
                //   "Update Your details",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //     fontWeight: FontWeight.w600,
                //     fontSize: 35,
                //     color: kWhiteColor.withOpacity(0.7),
                //   ),
                // ),
                SizedBox(height: size.height * 0.030),
                TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: kInputColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    filled: true,
                    hintText: "sasika chandila",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person_outline_sharp),
                    ),
                    fillColor: tField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
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
                    hintText: "990723915V",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.numbers_sharp),
                    ),
                    fillColor: tField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
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
                    hintText: "0770864513",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone),
                    ),
                    fillColor: tField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
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
                    hintText: "sasi",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.verified_user),
                    ),
                    fillColor: tField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.020),
                TextField(
                  obscureText: _isSecurePassword1,
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
                    fillColor: tField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.020),
                TextField(
                  obscureText: _isSecurePassword1,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: kInputColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    filled: true,
                    hintText: "Rewrite your new password",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.password_outlined),
                    ),
                    suffixIcon: togglePassword(),
                    fillColor: tField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
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
                    hintText: "sasi",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.verified_user),
                    ),
                    fillColor: tField,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: 244,
                    height: size.height * 0.080,
                    decoration: const BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(37)),
                    ),
                    child: const Text(
                      "Update",
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
                ),
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
          _isSecurePassword1 = !_isSecurePassword1;
        });
      },
      icon: _isSecurePassword1
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.black,
    );
  }
}
