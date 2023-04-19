import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              child: box(Colors.grey, 300),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: box(Colors.red, 200),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: box(Colors.amber, 100),
            ),
          ],
        ),
      ),
    );
  }

  Container box(Color color, double width) {
    return Container(
      width: width,
      height: width,
      color: color,
    );
  }
}
