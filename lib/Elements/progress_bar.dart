import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:quiz_app/controllers/questions_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

class progressbar extends StatelessWidget {
  const progressbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 104, 150, 248), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            print(controller.animation.value);
            return Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 238, 255, 4),
                          Color.fromARGB(176, 237, 241, 3),
                        ], // Replace with your desired colors
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
                Positioned.fill(
                    left: 7.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${(controller.animation.value * 60).round()} sec",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 3, 17, 61),
                          ),
                        ),
                        WebsafeSvg.asset(
                          "assets/images/clock2.svg",
                          width: 25,
                          height: 25,
                        ),
                      ],
                    )),
              ],
            );
          }),
    );
  }
}
