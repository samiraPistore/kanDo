import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String title;
  final VoidCallback ontap; 


  const CustomBtn({
    super.key, 
    required this.title, 
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.8;
    final height = MediaQuery.of(context).size.height * 0.09;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: ontap, 
        style: ElevatedButton.styleFrom(
          
          padding: const EdgeInsets.symmetric(vertical: 16), 
          backgroundColor: Theme.of(context).colorScheme.secondary,
          fixedSize: Size(width, height)
          
        ),
        child: Text(
          title,
          textAlign: TextAlign.justify,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}