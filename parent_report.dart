import 'package:flutter/material.dart';
import 'package:transit_guard/models/entity_model.dart';

class ParentReportPage extends StatefulWidget {
  const ParentReportPage({super.key});

  @override
  State<ParentReportPage> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ParentReportPage> {
  List<EntityModel> timeList = [
    EntityModel(id: 1, description: "Morning"),
    EntityModel(id: 2, description: "Afternoon"),
    EntityModel(id: 3, description: "Evening"),
    EntityModel(id: 4, description: "Night"),
  ];

  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();

  TextEditingController _fromDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(),
        title: Text("Report"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Type Student name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 78, 80, 84),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Name is required";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Type School Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 78, 80, 84),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "School Name is required";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            //Time widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Time : ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 50),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Select Time",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(255, 78, 80, 84),
                      ),
                      items: timeList
                          .map((e) => DropdownMenuItem(
                                value: e.id,
                                child: Text(
                                  e.description,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ))
                          .toList(),
                      onChanged: (selectedItem) {}),
                ),
              ],
            ),

            SizedBox(height: 20),
            //From date  widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "From : ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 50),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  child: TextFormField(
                    controller: _fromDateController,
                    readOnly: true,
                    onTap: () async {
                      await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      ).then((value) {
                        if (value != null) {
                          fromDate = value;
                          _fromDateController.text =
                              "${fromDate.day}/${fromDate.month}/${fromDate.year}";
                          setState(() {});
                        }
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "From Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 78, 80, 84),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "To : ",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(width: 50),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  child: TextFormField(
                    controller: _fromDateController,
                    readOnly: true,
                    onTap: () async {
                      await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(3000))
                          .then((value) {
                        if (value != null) {
                          fromDate = value;
                          _fromDateController.text =
                              "${fromDate.day}/${fromDate.month}/${fromDate.year}";
                          setState(() {});
                        }
                      });
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "to Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 78, 80, 84),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            //generate button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.sizeOf(context).width * 0.9, 55),
                backgroundColor: Colors.yellow,
              ),
              onPressed: () {},
              child: const Text(
                "Generate",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
                child: ListView(
              shrinkWrap: true,
              children: List.generate(5, (index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Date : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateTime.now().toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pickup Time ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "06:20 AM",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pickup Location ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Palm Jumeirah, Dubai, UAE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Drop off Time ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "06:20 AM",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dropoff Location ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Palm Jumeirah, Dubai, UAE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }),
            )),
          ],
        ),
      ),
    );
  }
}
