import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../screens/details.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({super.key, required this.exam});


  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isPast = exam.dateTime.isBefore(now);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ExamDetails(),
            settings: RouteSettings(arguments: exam),
          ),
        );
      },
      child: Card(
        color: isPast ? Colors.lightBlue.shade50 : Colors.lightBlue.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isPast ? Colors.deepOrange.shade300 : Colors.lightBlue.shade700,
            width: 4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 5),
              Center(
                child: Text(
                  exam.subject,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.calendar_today, size: 27),
                        const SizedBox(width: 8),
                        Text(
                          '${exam.dateTime.day.toString().padLeft(2, '0')}.'
                              '${exam.dateTime.month.toString().padLeft(2, '0')}.'
                              '${exam.dateTime.year}',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.access_time, size: 30),
                        const SizedBox(width: 8),
                        Text(
                          '${exam.dateTime.hour.toString().padLeft(2, '0')}:'
                              '${exam.dateTime.minute.toString().padLeft(2, '0')}',
                          style: const TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}