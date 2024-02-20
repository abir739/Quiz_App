class QuestionModel {
  final int id, answer;
  final String question;
  final List<String> options;

  QuestionModel(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

// ignore: constant_identifier_names
const List example_data = [
  {
    "id": 1,
    "question": "Who created Flutter?",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "What is Flutter?",
    "options": [
      'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
      'Android Development Kit',
      'IOS Development Kit',
      'Web Development Kit'
    ],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Which programming language is used by Flutter",
    "options": ['Ruby', 'Dart', 'C++', 'Kotlin'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Who created Dart programming language?",
    "options": [
      'Lars Bak and Kasper Lund',
      'Brendan Eich',
      'Bjarne Stroustrup',
      'Jeremy Ashkenas'
    ],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
