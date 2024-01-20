import 'package:flutter/material.dart';

class AssigningPage extends StatefulWidget {
  const AssigningPage({super.key});

  @override
  State<AssigningPage> createState() => _AssigningPageState();
}

class _AssigningPageState extends State<AssigningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Form(
            // key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Image.asset(
                      "assets/logo.png",
                      height: 200,
                      width: 230,
                    ),
                    const Text(
                      "TRANSIT GUARD",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "Welcome Pasan Mendis!",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                        text: const TextSpan(
                      style: TextStyle(fontSize: 18),
                      children: [
                        TextSpan(text: "You are Assigning a "),
                        TextSpan(
                            text: "Vehicle",
                            style: TextStyle(color: Colors.yellow)),
                      ],
                    )),
                  ]),
                ),

                // const SizedBox(height: 50),

                const SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Vehicle Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 78, 80, 84),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Vehicle Number is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Vehicle Model",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 78, 80, 84),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Vehicle Model is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Vehicle Type",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 78, 80, 84),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Vehicle Type is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Seat Count",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 78, 80, 84),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Seat Count is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    // if () {
                    //   // Navigator.push(context, MaterialPageRoute(builder: (_) {
                    //   //   return const ReportScreen();
                    //   // }));
                    // }
                  },
                  child: const Text(
                    "Assign a Vehicle",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
