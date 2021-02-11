import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyyyy_flutter_app/models/task_data.dart';

class AddTaskSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff575757),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTextValue) {
                newTaskTitle = newTextValue;
                print(newTaskTitle);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context).addNewTask(newTaskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
