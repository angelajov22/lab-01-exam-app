import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import 'package:intl/intl.dart';

class ExamData extends StatelessWidget {

  final Exam exam;

  const ExamData({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final difference = exam.dateTime.difference(now);

    final formattedDateTime = DateFormat('dd.MM.yyyy HH:mm').format(exam.dateTime);

    return Center(
        child: Container(
          height: 300,
          width: 350,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.deepOrange.shade200,
              width: 8
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Информации за испитот:',
                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _infoRow('Датум и време:', formattedDateTime, Icons.calendar_today),
              _infoRow('Простории:', exam.classrooms.join(', '), Icons.meeting_room),
              _infoRowRemainingTime(difference),
            ],
          ),
        )
    );
  }

  Widget _infoRow(String label, String date, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blue),
          const SizedBox(width: 8),
          Text(
            '$label $date',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _infoRowRemainingTime(Duration difference) {
    bool isPast = difference.isNegative;
    final days = difference.inDays;
    final hours = (difference.inHours % 24);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(Icons.access_time, size: 20, color: isPast ? Colors.red : Colors.blue),
          const SizedBox(width: 8),
          Text(
            isPast
                ? 'Испитот е завршен'
                : 'Време до испит: $days дена, $hours часа',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isPast ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}