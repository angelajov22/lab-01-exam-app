import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/exam_grid.dart';
import '../widgets/exams_total.dart'; // твојот widget за вкупно испити

class HomeScreen extends StatelessWidget {
  final List<Exam> exams;

  const HomeScreen({super.key, required this.exams});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade100,
      appBar: AppBar(
        title: Text("Распоред за испити - 221192",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ExamGrid(exams: exams),
            ),
            const SizedBox(height: 12),
            ExamTotal(exams: exams),
          ],
        ),
      ),
    );
  }
}