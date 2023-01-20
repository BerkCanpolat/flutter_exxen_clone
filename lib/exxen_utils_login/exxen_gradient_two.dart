import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GradientTwo extends StatelessWidget {
  const GradientTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 11, 11, 17).withOpacity(1),
                    Color.fromARGB(255, 11, 11, 17).withOpacity(1),
                    Color.fromARGB(255, 11, 11, 17).withOpacity(1),
                    Color.fromARGB(255, 11, 11, 17).withOpacity(1),
                    Color.fromARGB(255, 11, 11, 17).withOpacity(1),
                    Color.fromARGB(255, 11, 12, 18).withOpacity(0.5),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                    Color(0xff1a1c29).withOpacity(0.1),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
