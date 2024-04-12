import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/model/todo.dart';

class TaskData extends ChangeNotifier {
  final List<ToDo> _tasks = [

  ];

  UnmodifiableListView<ToDo> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle ) {
    final task = ToDo( todoText: newTaskTitle);
    _tasks.add(task); // to add data to list
    notifyListeners();
  }

  void updateTask(ToDo task) {
    task.toggleDone();
    notifyListeners(); // to update the listenings
  }

  void deleteTask(ToDo task) {
    _tasks.remove(task);
    notifyListeners();
  }
}