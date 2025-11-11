import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/details.dart';
import 'models/exam_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        if (settings.name == "/") {
          return MaterialPageRoute(
            builder: (_) => HomeScreen(exams: exams),
          );
        } else if (settings.name == "/details") {
          final exam = settings.arguments as Exam;
          return MaterialPageRoute(
            builder: (_) => ExamDetails(),
            settings: RouteSettings(arguments: exam),
          );
        }
        return null;
      },
    );
  }
}

class ExamDetailPlaceholder extends StatelessWidget {
  const ExamDetailPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Exam Details")),
    );
  }
}

