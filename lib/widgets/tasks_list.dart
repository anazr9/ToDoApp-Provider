import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import '/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTile: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (bool? checkboxState) {
                taskData.updateTask(task);
                // setState(() {
                //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
              longpressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
