import 'package:calender_card/task.dart';
import 'package:calender_card/task_data.dart';
import 'package:flutter/material.dart';
import 'package:calender_card/constants.dart';
import 'package:provider/provider.dart';
class AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: Color(0xFF6f6e73),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',style: TextStyle(color: Color(0xff756fd6),fontSize: 35,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kBackgroundColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kBackgroundColor),
                ),
              ),
              cursorColor: kBackgroundColor,
              cursorHeight: 20,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;

              },
            ),
            FlatButton(
              color: Color(0xff756fd6),
              hoverColor: kBackgroundColor,
                textColor: kTextColor,
                onPressed: (){
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
                },
                child: Text('Add'),


            ),
          ],
        ),
        decoration: BoxDecoration(
          color: kPeriwinkle,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        ),
      ),

    );
  }
}
