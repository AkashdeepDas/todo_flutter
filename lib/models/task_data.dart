import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy desk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy dek'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask({String newTask, int index}) {
    index ??= taskCount;
    _tasks.insert(
      index,
      Task(
        name: newTask,
      ),
    );
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
