import 'package:flutter/material.dart';
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
            color: const Color.fromARGB(255, 104, 150, 248),
            width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 227, 252, 5),
                    Color.fromARGB(0, 244, 245, 247),
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
                  const Text(
                    "20 sec",
                    style: TextStyle(
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
      ),
    );
  }
}