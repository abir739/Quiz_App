import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/Elements/progress_bar.dart';
import 'package:quiz_app/models/questions.dart';

class body extends StatelessWidget {
  // const body({
  //   required Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context)
              .size
              .height, //will have the same device's height
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
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: progressbar()),
                const SizedBox(
                  height: 16,
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
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(children: [
                    Text(
                      sample_data[0]['question'],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 3, 17, 61),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
