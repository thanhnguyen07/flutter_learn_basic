import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextAllInOne extends StatelessWidget {
  const TextAllInOne({super.key});

  final String text = 'Hello, world';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(210, 59, 58, 58),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  shadows: const [
                    Shadow(
                      color: Colors.lightGreen,
                      blurRadius: 10,
                      offset: Offset(3, 3),
                    )
                  ],
                  foreground: Paint()
                    ..shader = const LinearGradient(colors: [
                      Colors.red,
                      Colors.white,
                      Colors.blue,
                    ]).createShader(const Rect.fromLTRB(0, 0, 320, 0))),
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                text: 'Text example ',
                children: [
                  const TextSpan(
                    text: 'Text click1 ',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text: 'Text example Text example Text example Text example',
                  ),
                  const WidgetSpan(
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('tap'),
                    text: 'Text click2 ',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
