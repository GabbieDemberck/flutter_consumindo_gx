import 'dart:convert';

import 'package:http/http.dart' as http;

Future? MeuJson() async {
  var json = await fetch();
}

/*
Future fetch() async {
  var url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get((Uri.parse(url)));
  var json = jsonDecode(response.body);
  return json;
}
*/
Future<Todo> fetch() async {
  var url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get((Uri.parse(url)));
  var json = jsonDecode(response.body);
  var todo = Todo.fromJson(json);
  return todo;
}

class Todo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo(this.title, this.id, this.userId, this.completed);

  factory Todo.fromJson(Map json) {
    return Todo(
      json['title'],
      json['id'],
      json['userId'],
      json['completed'],
    );
  }

  Map toJson() {
    return {
      'title': title,
      'id': id,
      'userId': userId,
      'completed': completed,
    };
  }
}
