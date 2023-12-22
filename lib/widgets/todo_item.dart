import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

import '../model.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onChangedDelete;
  ToDoItem(
      {required this.todo,
      required this.onToDoChanged,
      required this.onChangedDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText,
          style: TextStyle(
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
            fontSize: 16,
            color: tdBlack,
          ),
        ),
        trailing: Container(
          // padding: EdgeInsets.all(0),
          // margin: EdgeInsets.symmetric(vertical: 12),
          // height: 35,
          // width: 35,
          // decoration: BoxDecoration(
          //   color: tdRed,
          //   borderRadius: BorderRadius.circular(5),
          // ),
          child: IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
            iconSize: 18,
            onPressed: () {
              onChangedDelete(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
