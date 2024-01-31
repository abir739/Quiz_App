import 'package:flutter/material.dart';
import 'package:quiz_app/Elements/body.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(138, 8, 23, 71),
        actions: [
          ElevatedButton(onPressed: () {}, child: const Text("Skip")),
        ],
      ),
      body: body(),
    );
  }
}

@override
Widget build(BuildContext context) {
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
    ],
  );
}
