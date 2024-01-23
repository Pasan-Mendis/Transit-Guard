import 'package:flutter/material.dart';

import 'account_selection_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPass = false;
  bool showConfirm = false;

  showConfPass() {
    setState(() {
      showConfirm = !showConfirm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 29, 33, 1.0),
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 305.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/_1dff9673-34a7-4b6e-9cc8-d05d04e8c9d0-removebg-fotor-bg-remover-20231231124918_resized (2).png',
                    ),
                  ),
                ),
                Positioned(
                  bottom: 190.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            fontFamily: "Ubuntu",
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'T',
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                            TextSpan(text: 'RANSIT '),
                            TextSpan(
                              text: 'G',
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                            TextSpan(text: 'UARD\n'),
                            TextSpan(
                              text: 'Your trusted travel companion',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Ubuntu",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ), // Adjust the space between the titles and the paragraph
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Embark on a refined commuting experience\n"
                          "with Transit Guard. Effortless scheduling,\n"
                          "real-time tracking, and instant notifications\n"
                          "create a journey as elegant as it is secure.\n"
                          "Welcome to a new era of stress-free\n"
                          "travel.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Ubuntu",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountSelectionPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(
                    238, 209, 0, 1.0), // Set the background color to yellow
              ),
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
