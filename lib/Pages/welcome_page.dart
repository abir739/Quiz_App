import 'package:flutter/material.dart';
import 'package:quiz_app/Pages/quiz_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  const Center(
                    child: Text(
                      "Welcome To Quiz App,\n Let's Start!",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 17, 61),
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Enter your informations:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 17, 61),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(193, 21, 81, 170),
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                        color: Colors
                            .white, // Set the text color of the hintText to white
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuizPage(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16.0 * 0.75),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(193, 21, 81, 170),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Center(
                        child: Text(
                          "Let's Start!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
