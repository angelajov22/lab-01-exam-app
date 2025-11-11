import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/exam_card.dart';

class ExamGrid extends StatelessWidget {
  final List<Exam> exams;

  const ExamGrid({super.key, required this.exams});

  @override
  Widget build(BuildContext context) {
    final sortedExams = List.from(exams);

    sortedExams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 200 / 244
      ),
      itemCount: sortedExams.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ExamCard(exam: sortedExams[index]);
      },
    );
  }
}