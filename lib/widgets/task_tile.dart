import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  String taskTitle;
  final Function checkboxCallBack;
  TaskTile(
    this.isChecked,
    this.taskTitle,
    this.checkboxCallBack,
  );
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {},
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newVal) {
          checkboxCallBack(newVal);
        },
      ),
    );
  }
}
