import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column - Row'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            box(Colors.black),
            box(Colors.red),
            box(Colors.lightBlue),
          ],
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     box(Colors.black),
        //     box(Colors.red),
        //     box(Colors.lightBlue),
        //   ],
        // ),
      ),
    );
  }

  Container box(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
