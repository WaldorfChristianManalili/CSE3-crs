import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Assignment',
      theme: ThemeData(
        primaryColor: Color(0xFF404040),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF404040),
          onPrimary: Colors.white,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Color(0xFF0F172A), // Active tab font color
          unselectedLabelColor: Colors.white60,
          indicator: BoxDecoration(
            color: Colors.amber, // Background color for the active tab
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: ClassScreen(),
    );
  }
}

class ClassScreen extends StatelessWidget {
  const ClassScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(0.0, 0.0), // Set the preferred size to zero
          child: AppBar(
            elevation: 0.0, // Set elevation to 0 to remove shadow
            backgroundColor: Color(0xFF404040), // Set background color here
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2), // shadow
                  ),
                ],
                color: Color(0xFF404040), // bg color of the TabBar
              ),
              margin: EdgeInsets.only(
                  bottom: 10.0), // Add some margin to the TabBar
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.class_),
                    text: 'Class',
                  ),
                  Tab(
                    icon: Icon(Icons.school),
                    text: 'Teaching',
                  ),
                  Tab(
                    icon: Icon(Icons.star),
                    text: 'Grades',
                  ),
                ],
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xfffbbf24), // Yellow color
                ),
                labelColor: Color(0xFF0F172A), // Active tab font color
                unselectedLabelColor: Colors.white60,
                indicatorPadding:
                    EdgeInsets.symmetric(horizontal: 12), // Adjust padding here
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildClassAssignment(),
                  Container(
                      color: Colors.white), // Placeholder for Teaching content
                  SecondScreen(), // Placeholder for Grades content
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClassAssignment() {
    TextStyle columnTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    TextStyle dataTextStyle = TextStyle(
      fontSize: 12,
      color: Colors.black,
    );

    // Custom header widget that looks like a part of the DataTable
    Widget tableTitleWidget = Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color for the header
        border: Border(
          bottom: BorderSide(
              color: Colors.grey.shade300), // Border color for the bottom
        ),
      ),
      child: Text(
        '1ST SEMESTER S.Y 2023 - 2024',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );

    return ListView(
      children: [
        // Main header "Current Class Assignment"
        Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Center(
            child: Text(
              'Current Class Assignment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        // Custom DataTable with rounded corners and border
        Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            border: Border.all(color: Colors.grey.shade300), // Border color
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
          child: Column(
            children: [
              tableTitleWidget, // The custom table title widget
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingRowHeight: 48.0,
                  dataRowHeight: 48.0,
                  headingRowColor: MaterialStateProperty.all(Colors.white),
                  columns: <DataColumn>[
                    DataColumn(
                        label: Text('Class Code', style: columnTextStyle)),
                    DataColumn(
                        label: Text('Course Code & Section',
                            style: columnTextStyle)),
                    DataColumn(
                        label: Text('Course Title', style: columnTextStyle)),
                    DataColumn(
                        label: Text('Class Schedule', style: columnTextStyle)),
                    DataColumn(label: Text('Credit', style: columnTextStyle)),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('26335', style: dataTextStyle)),
                        DataCell(Text('CSC 04131-1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26334', style: dataTextStyle)),
                        DataCell(Text('CSC 04132-1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lec)', style: dataTextStyle)),
                        DataCell(Text('T 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26333', style: dataTextStyle)),
                        DataCell(Text('CSC 04133-1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('W 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26332', style: dataTextStyle)),
                        DataCell(Text('CSC 04134-1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lec)', style: dataTextStyle)),
                        DataCell(Text('F 6:00AM-9:00AM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26331', style: dataTextStyle)),
                        DataCell(Text('CSC 04135-1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('F 10:00AM-1:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    // Final row with total credits
                    DataRow(
                      cells: [
                        DataCell(Text('')), // Empty cells for other columns
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('Total No. of Credits:',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                        DataCell(Text('15',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
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

    // Custom header widget that looks like a part of the DataTable
    Widget tableTitleWidget = Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color for the header
        border: Border(
          bottom: BorderSide(
              color: Colors.grey.shade300), // Border color for the bottom
        ),
      ),
      child: Column(
        children: [],
      ),
    );

    return ListView(
      children: [
        // Grades header "Viewing of Grades"
        Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Center(
            child: Text(
              'Viewing of Grades',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        // Custom DataTable with rounded corners and border
        Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            border: Border.all(color: Colors.grey.shade300), // Border color
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
          child: Column(
            children: [
              tableTitleWidget, // The custom table title widget
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingRowHeight: 48.0,
                  dataRowHeight: 48.0,
                  headingRowColor: MaterialStateProperty.all(Colors.white),
                  columns: <DataColumn>[
                    DataColumn(
                        label: Text('Course Code', style: columnTextStyle)),
                    DataColumn(label: Text('Section', style: columnTextStyle)),
                    DataColumn(
                        label: Text('Course Title', style: columnTextStyle)),
                    DataColumn(
                        label: Text('Class Schedule', style: columnTextStyle)),
                    DataColumn(
                        label: Text('Instructor', style: columnTextStyle)),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(ElevatedButton(
                            child: const Text('CSC 04131'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ThirdScreen()),
                              );
                            })),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('Wenceslao', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(ElevatedButton(
                            child: const Text('CSC 04131'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ThirdScreen()),
                              );
                            })),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('Wenceslao', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(ElevatedButton(
                            child: const Text('CSC 04131'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ThirdScreen()),
                              );
                            })),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('Wenceslao', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(ElevatedButton(
                            child: const Text('CSC 04131'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ThirdScreen()),
                              );
                            })),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('Wenceslao', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(ElevatedButton(
                            child: const Text('CSC 04131'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ThirdScreen()),
                              );
                            })),
                        DataCell(Text('1', style: dataTextStyle)),
                        DataCell(
                            Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3',
                            style: dataTextStyle)),
                        DataCell(Text('Wenceslao', style: dataTextStyle)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});
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

    // Custom header widget that looks like a part of the DataTable
    Widget tableTitleWidget = Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color for the header
        border: Border(
          bottom: BorderSide(
              color: Colors.grey.shade300), // Border color for the bottom
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
                  )),
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

    return ListView(
      children: [
        // Main header "Current Class Assignment"
        Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Center(
            child: Text(
              'Current Class Assignment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        // Custom DataTable with rounded corners and border
        Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            border: Border.all(color: Colors.grey.shade300), // Border color
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
                }),
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
                }),
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
                      backgroundColor: Color.fromARGB(255, 87, 81, 81));
                }),
          ),
        ]),
      ],
    );
  }
}
