import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LearningProvider with ChangeNotifier {
  // Variables to hold user data
  String _userId;
  double _learningProgress;
  int _scores;

  LearningProvider() {
    _learningProgress = 0.0;
    _scores = 0;
  }

  // Getters
  String get userId => _userId;
  double get learningProgress => _learningProgress;
  int get scores => _scores;

  // Setters
  void setUserId(String id) {
    _userId = id;
    notifyListeners();
  }

  void updateLearningProgress(double progress) {
    _learningProgress = progress;
    notifyListeners();
  }

  void addScores(int points) {
    _scores += points;
    notifyListeners();
  }

  void resetData() {
    _learningProgress = 0.0;
    _scores = 0;
    notifyListeners();
  }
}

// Usage in main.dart:
// ChangeNotifierProvider(create: (context) => LearningProvider(), child: MyApp())
