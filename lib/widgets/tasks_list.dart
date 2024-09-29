import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData value, Widget? child) {
        return ListView.builder(
            itemCount: value.taskCount,
            itemBuilder: (context, index) {
              return TaskTile(
                value.tasks[index].isDone,
                value.tasks[index].name,
                (bool checkboxState) {
                  //   value.tasks[index].toggleDone();
                  value.updateTask(value.tasks[index]);
                },
              );
            });
      },
    );
  }
}
