import 'package:flutter/material.dart';
import 'package:khan_do/components/custom_btn.dart';
import 'package:khan_do/components/header.dart';
import 'package:khan_do/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Header(),
        
              CustomBtn(
                title: 'Cadastrar atividade',
                ontap: () {
                  Navigator.of(context).pushNamed(AppRoutes.newTask);
                },
              ),
              CustomBtn(
                title: 'Ver kanban',
                ontap: () {
                  Navigator.of(context).pushNamed(AppRoutes.kanban);
                },
              ), 
              CustomBtn(
                title: 'Gerar relatório',
                ontap: () {
                  Navigator.of(context).pushNamed(AppRoutes.kanban);
                },
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
