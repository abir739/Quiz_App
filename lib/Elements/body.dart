import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/Elements/progress_bar.dart';

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
        const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                progressbar(),
              ],
            ),
          ),
        )
      ],
    );
  }
}


