import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GradientOne extends StatelessWidget {
  const GradientOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
             Image.asset(
              "assets/exxengiris1.jpeg",
              fit: BoxFit.cover,
            ),
        ],
      ),
    );
  }
}
