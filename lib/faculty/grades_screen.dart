import 'package:flutter/material.dart';
import 'course_grades_screen.dart';

class GradesScreen extends StatelessWidget {
  const GradesScreen({Key? key});

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
            children: [ // The custom table title widget
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
                                    builder: (context) => const CourseGradesScreen()),
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
                                    builder: (context) => const CourseGradesScreen()),
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
                                    builder: (context) => const CourseGradesScreen()),
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
                                    builder: (context) => const CourseGradesScreen()),
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
                                    builder: (context) => const CourseGradesScreen()),
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
                    // Add more DataRow entries here
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