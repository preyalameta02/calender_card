import 'package:flutter/material.dart';
import 'package:calender_card/widgets/task_tile.dart';
import 'package:calender_card/task_data.dart';
import 'package:provider/provider.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskdata,child){
        return ListView.builder(itemBuilder: (context,index){
          final task = taskdata.tasks[index];
          return TaskTile(isChecked: task.isDone,
              taskTitle: task.name,
              checkBoxCallBack: (checkBoxState){
            taskdata.updateTask(task);

              }, longPressCallBack: (){
            taskdata.deleteTask(task);
            },
            
          );

        },
          itemCount: taskdata.taskCount,
        );
      }
    );
  }
}
