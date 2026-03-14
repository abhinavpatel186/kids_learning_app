import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Lessons'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Interactive Lessons for Numbers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add Number lessons here
            // Example:
            // Lesson 1: Learn Numbers 1-10

            SizedBox(height: 20),
            Text(
              'Interactive Lessons for Alphabets',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add Alphabet lessons here
            // Example:
            // Lesson 1: Learn A-Z
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: PracticeScreen()));