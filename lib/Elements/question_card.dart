import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/Elements/options.dart';
import 'package:quiz_app/controllers/questions_controller.dart';
import 'package:quiz_app/models/questions.dart'; // Import necessary elements

class Question extends StatelessWidget {
  const Question({
    required Key key,
    required this.question, // This allows the widget to receive the question data it needs to display
  }) : super(key: key);

  final QuestionModel question;
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 3, 17, 61),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: question.options.length,
              itemBuilder: (context, index) => Options(
                index: index,
                text: question.options[index],
                press: () => _controller.checkAns(question, index),
                key: UniqueKey(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
