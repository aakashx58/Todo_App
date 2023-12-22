// import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning College'),
      ToDo(id: '02', todoText: 'Morning Exercise'),
      ToDo(id: '04', todoText: 'Lunch'),
      ToDo(id: '05', todoText: 'Assignment'),
      ToDo(id: '06', todoText: 'Study'),
      ToDo(id: '08', todoText: 'Work on flutter', isDone: true),
    ];
  }
}
