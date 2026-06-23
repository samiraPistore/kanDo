import 'package:flutter/material.dart';
import 'package:khan_do/components/form.dart';
import 'package:khan_do/components/header.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Header(),
              Input()
            ],
          ),
        ),
      ),
    );
  }
}