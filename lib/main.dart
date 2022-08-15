import 'package:calender_card/task_data.dart';
import 'package:flutter/material.dart';
import 'package:calender_card/screens/TasksScreen.dart';
import 'package:provider/provider.dart';
import 'package:calender_card/task_data.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=> TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
