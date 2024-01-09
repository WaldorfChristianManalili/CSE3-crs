import 'package:flutter/material.dart';
import 'class_assignment_widget.dart';
import 'grades_screen.dart';

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
                  ClassAssignmentWidget(),
                  Container(
                      color: Colors.white), // Placeholder for Teaching content
                  GradesScreen(), // Placeholder for Grades content
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}