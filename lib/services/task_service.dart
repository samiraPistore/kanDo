import 'package:khan_do/models/task_model.dart';


class TasksService {

  static List<Map<String, dynamic>> _tasks = [];


  static Future<List<Task>> getTasks() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _tasks.map((t) => Task.fromJson(t)).toList();
  }

  static Future<void> addTask(Task newTask) async {
    await Future.delayed(const Duration(milliseconds: 200));
    

    _tasks.add(newTask.toJson());
  }


  static Future<void> updateTaskStatus(int id, String newStatus) async {
    await Future.delayed(const Duration(milliseconds: 100));
    
    // Procura a tarefa pelo título e atualiza o campo status
    for (var task in _tasks) {
      if (task['id'] == id) {
        task['status'] = newStatus;
        break;
      }
    }
  }
}