import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset("assets/logo.png",),
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
