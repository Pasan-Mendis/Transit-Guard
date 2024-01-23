import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';
import 'package:flutter_application_1/driverlocation.dart';

class SpecialNotice extends StatelessWidget{
SpecialNotice({super.key});

final topicController =TextEditingController();
final messageController =TextEditingController();
@override
Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Special Notice", style: TextStyle(fontWeight: FontWeight.bold)),
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
            const SizedBox(height: 60), // Adjust the height as needed
            const Image(
              image: AssetImage(
                'images/Notice.png', // Replace with the actual path to your PNG image
              ),
            ),
            const SizedBox(height: 25.0),
    TextField(
            minLines: 1,
            controller: topicController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Topic...',
               contentPadding: const EdgeInsets.all(16.0),
               enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15.0),
               borderSide: const BorderSide(color: Color.fromARGB(255, 128, 129, 132)),
               ),
               focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15.0),
               borderSide: const BorderSide(color: kButtonColor),
               ),
              suffixIcon: IconButton(
                onPressed: (){
                  topicController.clear();
                }, icon: const Icon(Icons.clear)),
            ),
          ),
           const SizedBox(height: 15.0),
    TextField(
            minLines: 1,
            maxLines: 2,
            controller: messageController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Message here..',
               contentPadding: const EdgeInsets.all(16.0),
               enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15.0),
               borderSide: const BorderSide(color: Color.fromARGB(255, 128, 129, 132)),
               ),
               focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15.0),
               borderSide: const BorderSide(color: kButtonColor),
               ),
              suffixIcon: IconButton(
                onPressed: (){
                  messageController.clear();
                }, icon: const Icon(Icons.clear)),
            ),
           ),
           const SizedBox(height: 40.0),
      MaterialButton(
        
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const LocationPage()),
              );
        },
        color: kButtonColor,
        minWidth: 150.0, // Set the desired width
        height: 50.0,   // Set the desired height
        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.0),
                        ),
        child: const Text('Send',style: TextStyle(fontWeight: FontWeight.bold,
                            color: g1,
                            fontSize: 25.0 ),),
        
        ),

          ],
        ),
      ),
    );
  }

  
}
