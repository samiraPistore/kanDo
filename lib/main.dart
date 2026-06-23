import 'package:flutter/material.dart';
import 'package:khan_do/controllers/tasks_provider.dart';
import 'package:khan_do/routes/app_routes.dart';
import 'package:khan_do/screens/add_task_screen.dart';
import 'package:khan_do/screens/home_screen.dart';
import 'package:khan_do/screens/kanban_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => TaskProvider(), child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Color(0xFFAED6F1),
          secondary: Color(0xFFA2DED0),
          surface: Color(0xFFF7F7F7),
          onSurface: Color(0xFF333333),
        ),
        scaffoldBackgroundColor: Color(0xFFEDEDED),
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (ctx) => HomeScreen(),
        AppRoutes.kanban: (ctx) => KanbanScreen(),
        AppRoutes.newTask: (ctx) => AddTaskScreen(),
      },
    );
  }
}
