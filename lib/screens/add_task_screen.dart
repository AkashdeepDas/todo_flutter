import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/constants.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: kMajorColor,
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kScaffoldBackgroundColor,
              fontSize: 30,
            ),
          ),
          TextField(
            autofocus: true,
            cursorColor: kScaffoldBackgroundColor,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
            decoration: kTextFieldInputDecoration,
          ),
          SizedBox(
            height: 25,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
            color: kScaffoldBackgroundColor,
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTask: newTaskTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: kMajorColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
