import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: Column(
        children: <Widget>[
          Text('Top Scores', style: TextStyle(fontSize: 24)),
          // Sample Data
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(title: Text('User 1: 100')),  
                ListTile(title: Text('User 2: 90')),  
                ListTile(title: Text('User 3: 85')),  
                ListTile(title: Text('User 4: 80')),  
                ListTile(title: Text('User 5: 75')),  
              ],
            ),
          ),
        ],
      ),
    );
  }
}