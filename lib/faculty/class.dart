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
              margin: EdgeInsets.only(bottom: 10.0), // Add some margin to the TabBar
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
                indicatorPadding: EdgeInsets.symmetric(horizontal: 12), // Adjust padding here
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildClassAssignment(),
                  Container(color: Colors.white), // Placeholder for Teaching content
                  Container(color: Colors.white), // Placeholder for Grades content
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
          bottom: BorderSide(color: Colors.grey.shade300), // Border color for the bottom
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
                    DataColumn(label: Text('Class Code', style: columnTextStyle)),
                    DataColumn(label: Text('Course Code & Section', style: columnTextStyle)),
                    DataColumn(label: Text('Course Title', style: columnTextStyle)),
                    DataColumn(label: Text('Class Schedule', style: columnTextStyle)),
                    DataColumn(label: Text('Credit', style: columnTextStyle)),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text('26335', style: dataTextStyle)),
                        DataCell(Text('CSC 04131-1', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('M 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26334', style: dataTextStyle)),
                        DataCell(Text('CSC 04132-1', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lec)', style: dataTextStyle)),
                        DataCell(Text('T 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26333', style: dataTextStyle)),
                        DataCell(Text('CSC 04133-1', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('W 6:00PM-9:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26332', style: dataTextStyle)),
                        DataCell(Text('CSC 04134-1', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lec)', style: dataTextStyle)),
                        DataCell(Text('F 6:00AM-9:00AM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('26331', style: dataTextStyle)),
                        DataCell(Text('CSC 04135-1', style: dataTextStyle)),
                        DataCell(Text('CS Elective 2 (lab)', style: dataTextStyle)),
                        DataCell(Text('F 10:00AM-1:00PM F2F Comp Lab 3', style: dataTextStyle)),
                        DataCell(Text('3', style: dataTextStyle)),
                      ],
                    ),
                    // Final row with total credits
                    DataRow(
                      cells: [
                        DataCell(Text('')), // Empty cells for other columns
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('Total No. of Credits:', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
                        DataCell(Text('15', style: TextStyle(
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
