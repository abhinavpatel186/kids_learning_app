// lib/models/learning_model.dart

class NumberModel {
  final int number;
  final String description;

  NumberModel({required this.number, required this.description});
}

class AlphabetModel {
  final String letter;
  final String phonetic;

  AlphabetModel({required this.letter, required this.phonetic});
}

class QuizQuestionModel {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestionModel({required this.question, required this.options, required this.correctAnswer});
}

class UserProfileModel {
  final String username;
  final int score;
  final List<String> completedQuizzes;

  UserProfileModel({required this.username, required this.score, required this.completedQuizzes});
}