import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _navigatetohome();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 29, 33, 1.0),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 125.0),
              child: Container(
                child: Image.asset(
                  'assets/images/_1dff9673-34a7-4b6e-9cc8-d05d04e8c9d0-removebg-fotor-bg-remover-20231231124918_resized (2).png',
                ),
              ),
            ),
            Positioned(
              bottom: 160.0,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        fontFamily: "Ubuntu",
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'T',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        TextSpan(text: 'RANSIT '),
                        TextSpan(
                          text: 'G',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        TextSpan(text: 'UARD\n'),
                        TextSpan(
                          text: 'Your trusted travel companion',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Ubuntu",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedBuilder(
                        animation: _animationController,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(10 * _animationController.value, 0),
                            child: child,
                          );
                        },
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(width: 25),
                      AnimatedBuilder(
                        animation: _animationController,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(-10 * _animationController.value, 0),
                            child: child,
                          );
                        },
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ),
    );
  }
}
