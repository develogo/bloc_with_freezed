import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/todo_model.dart';

part 'todo_service.g.dart';

@RestApi()
abstract class TodoService {
  factory TodoService(Dio dio) = _TodoService;

  @GET("/todos/")
  Future<List<TodoModel>> getTodos();
}
