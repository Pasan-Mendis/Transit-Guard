import 'package:flutter/material.dart';

class AccountSelectionPage extends StatefulWidget {
  const AccountSelectionPage({Key? key}) : super(key: key);

  @override
  _AccountSelectionPageState createState() => _AccountSelectionPageState();
}

class _AccountSelectionPageState extends State<AccountSelectionPage> {
  int selectedAccount =
      0; // 0 for none, 1 for Parent Account, 2 for Driver Account

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 29, 33, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Box 1: Parent Account
            InkWell(
              onTap: () {
                setState(() {
                  selectedAccount = 1;
                });
              },
              child: Container(
                width: 300, // Adjust the width as needed
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedAccount == 1 ? Colors.yellow : Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Parent Account',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Ubuntu",
                          ),
                        ),
                      ),
                      SizedBox(height: 0),
                      Text(
                        '\nElevate your child\'s commute with real-time tracking, instant notifications, and etc.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Ubuntu",
                        ),
                      ),
                      SizedBox(height: 0),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'assets/images/00001.png', // Path for the Parent Account icon
                          width: 120, // Adjust the size as needed
                          height: 120,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 30), // Adjust the space between the boxes

            // Box 2: Driver Account
            InkWell(
              onTap: () {
                setState(() {
                  selectedAccount = 2;
                });
              },
              child: Container(
                width: 300, // Adjust the width as needed
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedAccount == 2 ? Colors.yellow : Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Driver Account',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Ubuntu",
                          ),
                        ),
                      ),
                      SizedBox(height: 0),
                      Text(
                        '\nOptimize routes, enhance communication, emergency notification system. passenger tracking, and etc.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontFamily: "Ubuntu",
                        ),
                      ),
                      SizedBox(height: 0),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'assets/images/00002.png', // Path for the Driver Account icon
                          width: 100, // Adjust the size as needed
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
                height:
                    20), // Adjust the space between the boxes and the button

            // Next Button
            ElevatedButton(
              onPressed: () {
                // Handle the logic for the next button based on the selected account
                if (selectedAccount == 1) {
                  // Parent Account selected, navigate to the corresponding page
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ParentAccountPage()));
                } else if (selectedAccount == 2) {
                  // Driver Account selected, navigate to the corresponding page
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => DriverAccountPage()));
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Next',
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
