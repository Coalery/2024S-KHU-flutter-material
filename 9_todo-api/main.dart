import 'package:flutter/material.dart';
import 'data/models/todo.dart';
import 'data/todo_repository.dart';
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
        '/edit-todo': (context) => EditTodoPage(),
      },
    );
  }
}

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TodoRepository repository = TodoRepository();
  List<Todo>? data;

  @override
  void initState() {
    super.initState();
    fetchTodoList();
  }

  Future<void> fetchTodoList() async {
    print('Fecthing todo list');
    final List<Todo> result = await repository.list();
    setState(() {
      data = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) => TodoItem(
                    todo: data![index],
                    onEdit: () async {
                      await Navigator.pushNamed(context, '/edit-todo',
                          arguments: data![index]);
                      fetchTodoList();
                    },
                    onComplete: () async {
                      await repository.delete(data![index].id);
                      fetchTodoList();
                    }),
                itemCount: data!.length,
              )
            : const CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/create-todo');
          fetchTodoList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CreateTodoPage extends StatefulWidget {
  const CreateTodoPage({Key? key}) : super(key: key);

  @override
  State<CreateTodoPage> createState() => _CreateTodoPageState();
}

class _CreateTodoPageState extends State<CreateTodoPage> {
  final TextEditingController controller = TextEditingController();

  final TodoRepository repository = TodoRepository();

  bool isLoading = false;

  Future<void> createTodo() async {
    setState(() {
      isLoading = true;
    });

    final content = controller.text;
    await repository.create(content);
  }

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
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '할 일을 입력해주세요',
              ),
            ),
            TextButton(
              onPressed: () async {
                if (isLoading) {
                  return;
                }

                await createTodo();

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

class EditTodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prevTodo = ModalRoute.of(context)!.settings.arguments as Todo;
    return EditTodoWidget(prevTodo: prevTodo);
  }
}

class EditTodoWidget extends StatefulWidget {
  final Todo prevTodo;

  const EditTodoWidget({required this.prevTodo, Key? key}) : super(key: key);

  @override
  State<EditTodoWidget> createState() => _EditTodoWidgetState();
}

class _EditTodoWidgetState extends State<EditTodoWidget> {
  final TextEditingController controller = TextEditingController();
  final TodoRepository repository = TodoRepository();
  late Todo prevTodo;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    prevTodo = widget.prevTodo;
    controller.text = prevTodo.content;
  }

  Future<void> editTodo(String todoId) async {
    setState(() {
      isLoading = true;
    });

    final content = controller.text;
    await repository.update(todoId, content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('수정하기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '할 일을 입력해주세요',
              ),
            ),
            TextButton(
              onPressed: () async {
                if (isLoading) {
                  return;
                }

                await editTodo(prevTodo.id);

                Navigator.pop(context);
              },
              child: const Text('수정 완료'),
            ),
          ],
        ),
      ),
    );
  }
}
