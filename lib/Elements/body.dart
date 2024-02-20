import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:quiz_app/Elements/progress_bar.dart';
import 'package:quiz_app/Elements/question_card.dart';
import 'package:quiz_app/controllers/questions_controller.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/img2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: progressbar(),
                ),
                const SizedBox(
                  height: 26,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text.rich(
                    TextSpan(
                      text: "Question 1",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 3, 17, 61),
                      ),
                      children: [
                        TextSpan(
                          text: "/10",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 3, 17, 61),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.8,
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                    child: PageView.builder(
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => Question(
                    key:
                        UniqueKey(), // Provide a unique key for each instance of the Question widget
                    question: _questionController.questions[index],
                  ),
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
