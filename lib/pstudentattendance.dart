import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts.dart';

class StudentAttendance extends StatefulWidget {
  const StudentAttendance({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StudentAttendanceState createState() => _StudentAttendanceState();
}

class _StudentAttendanceState extends State<StudentAttendance> {
  String? selectedTime;
  String? selecteddays;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            colorScheme: const ColorScheme.light(
              primary: kButtonColor,
              onPrimary: kInputColor,
              background: kGrey,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Attendance Status", style: TextStyle(fontWeight: FontWeight.bold)),
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Time:   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kInputColor,
                    fontSize: 25.0,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kGrey,
                  ),
                  child: DropdownButton<String>(
                    value: selectedTime,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedTime = newValue;
                        });
                      }
                    },
                    iconEnabledColor: kInputColor,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kInputColor,
                      fontSize: 18.0,
                    ),
                    dropdownColor: kGrey,
                    underline: Container(
                      height: 0,
                      color: kGrey,
                    ),
                    items: <String>[
                      'Morning Route',
                      'Evening Route',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Date:   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kInputColor,
                    fontSize: 25.0,
                  ),
                ),
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kGrey,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "${selectedDate.toLocal()}".split(' ')[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kInputColor,
                            fontSize: 18.0,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          color: kInputColor,
                          onPressed: () => _selectDate(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
                  'Or',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kInputColor,
                    fontSize: 25.0,
                  ),
                ),
            const SizedBox(height: 30),
            //days container
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 78),
                Container(
                  alignment: Alignment.center,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kGrey,
                  ),
                  child: DropdownButton<String>(
                    value: selecteddays,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selecteddays = newValue;
                        });
                      }
                    },
                    iconEnabledColor: kInputColor,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kInputColor,
                      fontSize: 18.0,
                    ),
                    dropdownColor: kGrey,
                    underline: Container(
                      height: 0,
                      color: kGrey,
                    ),
                    items: <String>[
                      'Every Monday',
                      'Every Tuesday',
                      'Every Wednesday',
                      'Every Thursday',
                      'Every Friday',
                      
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            MaterialButton(
        
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) =>  const LocationPage()),
          //     );
        },
        color: kButtonColor,
        minWidth: 150.0, // Set the desired width
        height: 50.0,   // Set the desired height
        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.0),
                        ),
        child: const Text('Update',style: TextStyle(fontWeight: FontWeight.bold,
                            color: g1,
                            fontSize: 25.0 ),),
        
        ),
        const SizedBox(height: 15),
        const Row(
            children: [
            SizedBox(width: 100),
            Icon(
                  Icons.info, // Choose the icon you want
                  color: Color.fromARGB(255, 57, 124, 219),
                  size: 16.0, // Adjust the size based on your preference
                ),
            SizedBox(width: 8.0), // Add some space between the icon and text
            Text(
                  'Click this button to update Absent dates',
            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kInputColor,
                              fontSize: 10.0,
                            ),
                  ),
                      ],
                  )
          ],
        ),
      ),
    );
  }
}
