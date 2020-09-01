import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: kListTilePadding,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        activeColor: kScaffoldBackgroundColor,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
