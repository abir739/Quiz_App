import 'package:flutter/material.dart';
import 'package:quiz_app/Elements/options.dart'; // Import necessary elements

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Column(
        children: [
          Text(
            "Your question here", // Change this to the actual question text
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 3, 17, 61),
            ),
          ),
          Options(), // You may need to adjust this based on your implementation
          Options(), // Add more Options widgets if needed
          Options(),
          Options(),
        ],
      ),
    );
  }
}
