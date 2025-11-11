import 'package:flutter/material.dart';

import '../models/exam_model.dart';
import '../widgets/exam_title.dart';
import '../widgets/exam_data.dart';

class ExamDetails extends StatelessWidget {

  const ExamDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      backgroundColor: Colors.deepOrange.shade100,
      appBar: AppBar(
        title: Text(exam.subject.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 170),
            ExamTitle(subject: exam.subject),
            const SizedBox(height: 30),
            ExamData(exam: exam),
          ],
        ),
      ),
    );
  }
}