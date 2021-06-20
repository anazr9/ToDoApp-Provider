import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkBoxCallback;
  final Function()? longpressCallback;
  TaskTile(
      {required this.isChecked,
      required this.taskTile,
      required this.checkBoxCallback,
      required this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.redAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckBoxState;
//   TaskCheckbox(this.checkBoxState, this.toggleCheckBoxState);
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.redAccent,
//       value: checkBoxState,
//       onChanged: toggleCheckBoxState,
//     );
//   }
// }
