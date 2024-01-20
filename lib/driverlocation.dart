import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/driverstudent.dart';
import 'package:flutter_application_1/parentjourney.dart';
import 'package:flutter_application_1/pstudentattendance.dart';

class LocationPage extends StatelessWidget{
  const LocationPage({super.key});

  @override
Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Location", style: TextStyle(fontWeight: FontWeight.bold)),
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
              // Handle back button pressed
            },
          ),
        ),
      ),
      backgroundColor: g1,
      body:  Align(
      alignment: Alignment.topCenter,
      child: Column(
          children: [
              const SizedBox(height: 200),
               MaterialButton(
        
              onPressed: () {
           Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => const StudentAttendance()),
          );
                            },
              color: kButtonColor,
              minWidth: 250.0, // Set the desired width
              height: 50.0,   // Set the desired height
              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37.0),
                                          ),
                child: const Text('Route',style: TextStyle(fontWeight: FontWeight.bold,
                            color: g1,
                            fontSize: 25.0 ),),
        
                            ),
        const SizedBox(height: 20),
             MaterialButton(
        
              onPressed: () {
           Navigator.push(
           context,
           MaterialPageRoute(builder: (context) =>  const DriverStudent()),
          );
                            },
              color: kButtonColor,
              minWidth: 250.0, // Set the desired width
              height: 50.0,   // Set the desired height
              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37.0),
                                          ),
                child: const Text('Journey',style: TextStyle(fontWeight: FontWeight.bold,
                            color: g1,
                            fontSize: 25.0 ),),
        
                            ),
          const SizedBox(height: 20),
             MaterialButton(
        
              onPressed: () {
           Navigator.push(
           context,
           MaterialPageRoute(builder: (context) =>  const ParentJourney()),
          );
                            },
              color: kButtonColor,
              minWidth: 250.0, // Set the desired width
              height: 50.0,   // Set the desired height
              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37.0),
                                          ),
                child: const Text('Edit Route',style: TextStyle(fontWeight: FontWeight.bold,
                            color: g1,
                            fontSize: 25.0 ),),
        
                            ),
                            
            
          ],
      ),
      ),
   );
  }
}