import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/constants.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return Dismissible(
              key: Key(task.name),
              onDismissed: (direction) {
                taskData.deleteTask(task);
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${task.name} dismissed"),
                    action: SnackBarAction(
                      label: "UNDO",
                      onPressed: () => taskData.addTask(
                        newTask: task.name,
                        index: index,
                      ),
                    ),
                  ),
                );
              },
              background: Container(color: kScaffoldBackgroundColor),
              child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
