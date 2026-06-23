import 'package:flutter/material.dart';
import 'package:khan_do/routes/app_routes.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
       SizedBox(
          width: size.width * 0.2, 
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.home);
            },
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          height: size.height * 0.05,
          width: size.width * 0.5,
          child: Center(child: Text('ORGANIZAÇÃO DE TAREFAS',textAlign: TextAlign.justify)),
        ),
      ],
    );
  }
}
