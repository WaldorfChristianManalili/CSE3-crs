import 'package:flutter/material.dart';

class ClassAssignmentWidget extends StatelessWidget {
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