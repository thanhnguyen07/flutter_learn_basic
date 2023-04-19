import 'package:flutter/material.dart';

// import 'todo_list/main.dart';
// import 'text_all_in_one/main.dart';
// import 'package:learn_basic/column_row/main.dart';
import 'stack/main.dart';

void main() {
  runApp(const MaterialApp(
    // home: TodoList(),
    // home: TextAllInOne(),
    // home: ColumnRow(),
    home: StackWidget(),
    debugShowCheckedModeBanner: false,
  ));
}
