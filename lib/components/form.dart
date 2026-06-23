import 'package:flutter/material.dart';
import 'package:khan_do/components/custom_btn.dart';
import 'package:khan_do/controllers/tasks_provider.dart';
import 'package:provider/provider.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _titleController = TextEditingController();

  void _submmit() async {
    final title = _titleController.text;

    if (title.trim().isEmpty) {
      _showError('Por favor, preencha o campo');
      return; 
    }

  
    await Provider.of<TaskProvider>(context, listen: false).addTask(title);
    
    _titleController.clear(); 

    if (mounted) {
      Navigator.of(context).pop(); 
    }
  }
    void _showError(String message) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Image.asset('assets/logo.png'),
          content: Text(message, textAlign: TextAlign.justify,),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o pop-up
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: 'cadastrar task'
            ),
          ),
      
          SizedBox(height: 12,),
          CustomBtn(title: 'CADASTRAR', ontap: _submmit)
        ],
      ),
    );
  }
}