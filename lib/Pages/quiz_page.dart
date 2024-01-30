import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(138, 8, 23, 71),
        actions: [
          ElevatedButton(onPressed: () {}, child: const Text("Skip")),
        ],
      ),
      body: Stack(
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
      ),
    );
  }
}
