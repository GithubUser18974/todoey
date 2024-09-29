import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle = "Halo";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newVal) {
                newTaskTitle = newVal;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                //Add new Task
                Provider.of<TaskData>(context, listen: false)
                    .addNewTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
