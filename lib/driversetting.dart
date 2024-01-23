import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/parentlocation.dart';
import 'package:flutter_application_1/parentsettings.dart';
import 'package:flutter_application_1/driverspecialnotice.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isDarkModeEnabled = true;
  bool isLocationEnabled = true;
  bool isNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Settings", style: TextStyle(fontWeight: FontWeight.bold)),
        leading: Container(
          padding: const EdgeInsets.all(0.0),
          margin: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: kButtonColor,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: g1,
            ),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SpecialNotice()),
              );
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              icon: Icon(
                isDarkModeEnabled ? Icons.dark_mode : Icons.light_mode,
                color: g1,
              ),
              onPressed: () {
                setState(() {
                  isDarkModeEnabled = !isDarkModeEnabled;
                  // Add your logic for toggling dark mode here
                });
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, // Center the content
          children: [
            const SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Dark Mode",
                  style: TextStyle(fontWeight: FontWeight.bold, color: kInputColor, fontSize: 18.0),
                ),
                Switch(
                  value: isDarkModeEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      isDarkModeEnabled = value;
                      // Add your logic for toggling dark mode here
                    });
                  },
                  activeColor: kButtonColor,
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Location    ",
                  style: TextStyle(fontWeight: FontWeight.bold, color: kInputColor, fontSize: 18.0),
                ),
                Switch(
                  value: isLocationEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      isLocationEnabled = value;
                      // Add your logic for toggling location here
                    });
                  },
                  activeColor: kButtonColor,
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Notifications          ",
                  style: TextStyle(fontWeight: FontWeight.bold, color: kInputColor, fontSize: 18.0),
                ),
                Switch(
                  value: isNotificationEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      isNotificationEnabled = value;
                      // Add your logic for toggling location here
                    });
                  },
                  activeColor: kButtonColor,
                ),
              ],
            ),
            const SizedBox(height: 80.0),

            // Center the buttons
            Center(
              child: Column(
                children: [
                  // Add Privacy and Policy Button
                  MaterialButton(
        
        onPressed: () {
           Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  const ParentSettings()),
               );
        },
        color: kButtonColor,
        minWidth: 150.0, // Set the desired width
        height: 50.0,   // Set the desired height
        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.0),
                        ),
        child: const Text('Privacy and Policy',style: TextStyle(fontWeight: FontWeight.bold,
                            color: g1,
                            fontSize: 25.0 ),),
        
        ),

                  const SizedBox(height: 20),

                  // Add Logout Button
                  MaterialButton(
        
        onPressed: () {
           Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  const ParentLocation()),
               );
        },
        color: kButtonColor,
        minWidth: 150.0, // Set the desired width
        height: 50.0,   // Set the desired height
        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.0),
                        ),
        child: const Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,
                            color: kRedColor,
                            fontSize: 25.0 ),),
        
        ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: g1,
    );
  }
}
