import 'package:dio/dio.dart';

import 'models/todo.dart';

class TodoRepository {
  static const String baseUrl = 'http://localhost:3000';
  final dio = Dio(BaseOptions(
    headers: {'Authorization': 'Basic hello'},
  ));

  Future<List<Todo>> list() async {
    final response = await dio.get('$baseUrl/todos');
    return List.from(response.data).map((json) => Todo.fromJson(json)).toList();
  }

  Future<Todo> get(String todoId) async {
    final response = await dio.get('$baseUrl/todos/$todoId');
    return Todo.fromJson(response.data);
  }

  Future<Todo> create(String content) async {
    final response = await dio.post('$baseUrl/todos', data: {
      'content': content,
    });
    return Todo.fromJson(response.data);
  }

  Future<Todo> update(String todoId, String content) async {
    final response = await dio.put('$baseUrl/todos/$todoId', data: {
      'content': content,
    });
    return Todo.fromJson(response.data);
  }

  Future<void> delete(String todoId) async {
    await dio.delete('$baseUrl/todos/$todoId');
  }
}
