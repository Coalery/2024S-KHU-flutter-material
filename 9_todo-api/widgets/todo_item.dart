import 'package:flutter/material.dart';
import '../data/models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  final VoidCallback onEdit;
  final VoidCallback onComplete;

  const TodoItem(
      {required this.todo,
      required this.onEdit,
      required this.onComplete,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: Color(0xFFF5F5F5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(todo.content, textAlign: TextAlign.start),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: onEdit, child: const Text('수정')),
              TextButton(onPressed: onComplete, child: const Text('완료')),
            ],
          )
        ],
      ),
    );
  }
}
