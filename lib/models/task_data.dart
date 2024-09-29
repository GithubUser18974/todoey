import 'package:flutter/foundation.dart';
import 'package:todoey/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Go to gym"),
    Task(name: "Buy New mouse"),
  ];
  int get taskCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return _tasks;
  }

  void addNewTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
