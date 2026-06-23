import 'package:flutter/material.dart';
import 'package:khan_do/models/task_model.dart';
import 'package:khan_do/services/task_service.dart';

class TaskProvider with ChangeNotifier {
  List<Task> taskList = []; 

  Future<void> addTask(String title) async {

    Task nova = Task(
      id: DateTime.now().millisecondsSinceEpoch, 
      title: title, 
      status: 'to do',
    ); 
    
    await TasksService.addTask(nova); 
    taskList.add(nova);             
    
    notifyListeners();
  }
}