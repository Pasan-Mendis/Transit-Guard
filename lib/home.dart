import 'package:flutter/material.dart';
import 'package:transit_guard/components/my_button.dart';
import 'package:transit_guard/components/my_text_field.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:transit_guard/signup_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showPass = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  bool checkTheBox = false;
  check() {
    setState(() {
      checkTheBox = !checkTheBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 29, 33, 1.0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/_1dff9673-34a7-4b6e-9cc8-d05d04e8c9d0-removebg-fotor-bg-remover-20231231124918_resized (2).png',
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 276), // Adjust the vertical offset as needed
                  Text(
                    'TRANSIT GUARD',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: "Ubuntu",
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'WELCOME BACK!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  MyTextField(hintText: "Username"),
                  SizedBox(height: 20),
                  MyTextField(
                    hintText: "Password",
                    onPressed: showPassword,
                    obsecureText: showPass ? false : true,
                    icon: showPass ? Icons.visibility_off : Icons.visibility,
                  ),
                  SizedBox(height: 12),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Colors.grey[500],
                              ),
                              child: Checkbox(
                                checkColor: Colors.white,
                                value: checkTheBox ? true : false,
                                onChanged: (value) {
                                  check();
                                },
                              ),
                            ),
                            Text("Remember Me",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  MyButton(
                    customColor: Color.fromRGBO(238, 209, 0, 1.0),
                    text: "Login",
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Color.fromRGBO(238, 209, 0, 1.0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
