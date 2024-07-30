import 'package:flutter/material.dart';

import 'widgets/todo_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/todo-list',
      routes: {
        '/todo-list': (context) => TodoListPage(),
        '/create-todo': (context) => const CreateTodoPage(),
      },
    );
  }
}

class TodoListPage extends StatelessWidget {
  final List<String> data = [
    'Todo Item 1',
    'Todo Item 2',
    'Todo Item 3',
    'Todo Item 4',
    'Todo Item 5',
    'Todo Item 6',
    'Todo Item 7',
    'Todo Item 8',
    'Todo Item 9',
    'Todo Item 10',
  ];

  TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) => TodoItem(content: data[index]),
          itemCount: data.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/create-todo');
          print('Hello World');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CreateTodoPage extends StatelessWidget {
  const CreateTodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('생성하기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: '할 일을 입력해주세요',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('할 일 추가'),
            ),
          ],
        ),
      ),
    );
  }
}
