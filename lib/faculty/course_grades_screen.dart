import 'package:flutter/material.dart';

class CourseGradesScreen extends StatelessWidget {
  const CourseGradesScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    TextStyle columnTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    TextStyle dataTextStyle = TextStyle(
      fontSize: 12,
      color: Colors.black,
    );

    Widget tableTitleWidget = Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color for the header
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
          ), // Border color for the bottom
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 527,
            height: 22,
            child: Text(
              '** ACCEPTABLE GRADES:      1.00  1.25  1.50  1.75  2.00  2.25  2.50  2.75  3.00  5.0-5.00',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xE509090B),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.12,
              ),
            ),
          ),
          SizedBox(
            width: 628,
            height: 23,
            child: Text(
              'P-Passed  INC-Incomplete  DO-Dropped Officially  DU-Dropped Unofficially  DC-Dropped due to COVID-19 **',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xE509090B),
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.12,
              ),
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Course Code',
                        style: dataTextStyle,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Course Title',
                        style: dataTextStyle,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Units',
                        style: dataTextStyle,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Term / A.Y.',
                        style: dataTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'CSC 0413.1',
                      style: dataTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      'CS Elective 3',
                      style: dataTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      '3',
                      style: dataTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '1 / 2023',
                      style: dataTextStyle,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white, // Ensuring the background of the scaffold is white
      body: ListView(
        children: [
          // Rounded corners and border
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              border: Border.all(
                color: Colors.grey.shade300,
              ), // Border color
              borderRadius: BorderRadius.circular(8.0), // Rounded corners
            ),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: tableTitleWidget,
                ),
                // The custom table title widget
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    headingRowHeight: 48.0,
                    dataRowHeight: 48.0,
                    headingRowColor: MaterialStateProperty.all(Colors.white),
                    columns: <DataColumn>[
                      DataColumn(label: Text('Count', style: columnTextStyle)),
                      DataColumn(
                          label: Text('Student Number', style: columnTextStyle)),
                      DataColumn(
                          label: Text('Student Name', style: columnTextStyle)),
                      DataColumn(label: Text('Course', style: columnTextStyle)),
                      DataColumn(label: Text('Year', style: columnTextStyle)),
                      DataColumn(
                          label: Text('Final Grade', style: columnTextStyle)),
                      DataColumn(label: Text('Remarks', style: columnTextStyle)),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('1', style: dataTextStyle)),
                          DataCell(Text('202013456', style: dataTextStyle)),
                          DataCell(Text('Angol, Angel B.', style: dataTextStyle)),
                          DataCell(Text('BSCS', style: dataTextStyle)),
                          DataCell(Text('4', style: dataTextStyle)),
                          DataCell(Text('Final Year', style: dataTextStyle)),
                          DataCell(Text('Remarks', style: dataTextStyle)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('1', style: dataTextStyle)),
                          DataCell(Text('202013456', style: dataTextStyle)),
                          DataCell(Text('Angol, Angel B.', style: dataTextStyle)),
                          DataCell(Text('BSCS', style: dataTextStyle)),
                          DataCell(Text('4', style: dataTextStyle)),
                          DataCell(Text('Final Year', style: dataTextStyle)),
                          DataCell(Text('Remarks', style: dataTextStyle)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('1', style: dataTextStyle)),
                          DataCell(Text('202013456', style: dataTextStyle)),
                          DataCell(Text('Angol, Angel B.', style: dataTextStyle)),
                          DataCell(Text('BSCS', style: dataTextStyle)),
                          DataCell(Text('4', style: dataTextStyle)),
                          DataCell(Text('Final Year', style: dataTextStyle)),
                          DataCell(Text('Remarks', style: dataTextStyle)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('1', style: dataTextStyle)),
                          DataCell(Text('202013456', style: dataTextStyle)),
                          DataCell(Text('Angol, Angel B.', style: dataTextStyle)),
                          DataCell(Text('BSCS', style: dataTextStyle)),
                          DataCell(Text('4', style: dataTextStyle)),
                          DataCell(Text('Final Year', style: dataTextStyle)),
                          DataCell(Text('Remarks', style: dataTextStyle)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('1', style: dataTextStyle)),
                          DataCell(Text('202013456', style: dataTextStyle)),
                          DataCell(Text('Angol, Angel B.', style: dataTextStyle)),
                          DataCell(Text('BSCS', style: dataTextStyle)),
                          DataCell(Text('4', style: dataTextStyle)),
                          DataCell(Text('Final Year', style: dataTextStyle)),
                          DataCell(Text('Remarks', style: dataTextStyle)),
                        ],
                      ),
                      // Final row with total credits
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(children: [
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: ElevatedButton(
                child: const Text(
                  'Back',
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.black);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.white,
              child: ElevatedButton(
                child: const Text(
                  'Cancel',
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.black);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.white,
              child: ElevatedButton(
                child: const Text(
                  'Save',
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 87, 81, 81),
                  );
                },
              ),
            ),
          ]),
        ],
      ),
    );
  }
}