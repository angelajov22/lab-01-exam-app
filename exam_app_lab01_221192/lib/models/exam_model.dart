class Exam {
  final String subject;
  final DateTime dateTime;
  final List<String> classrooms;

  Exam({
    required this.subject,
    required this.dateTime,
    required this.classrooms,
  });

}

final exams = [
  Exam(subject: 'Веројатност и статистика', dateTime: DateTime(2025, 11, 11, 9, 0), classrooms: ['Лаб 215', 'Лаб 13']),
  Exam(subject: 'Напредно програмирање', dateTime: DateTime(2025, 11, 5, 12, 0), classrooms: ['Лаб 138']),
  Exam(subject: 'Бази на податоци', dateTime: DateTime(2025, 11, 14, 10, 20), classrooms: ['Лаб 3']),
  Exam(subject: 'Калкулус', dateTime: DateTime(2025, 11, 24, 11, 0), classrooms: ['Кабинет 117']),
  Exam(subject: 'Професионални вештини', dateTime: DateTime(2025, 11, 1, 13, 30), classrooms: ['Лаб 200в']),
  Exam(subject: 'Мобилни информациски системи', dateTime: DateTime(2025, 12, 3, 14, 0), classrooms: ['Лаб 200аб']),
  Exam(subject: 'Дигитизација', dateTime: DateTime(2025, 11, 8, 8, 15), classrooms: ['Лаб 12']),
  Exam(subject: 'Вовед во науката за податоци', dateTime: DateTime(2025, 12, 15, 10, 0), classrooms: ['Кабинет 117']),
  Exam(subject: 'Дискретна математика', dateTime: DateTime(2025, 11, 12, 12, 0), classrooms: ['Лаб 2']),
  Exam(subject: 'Економија', dateTime: DateTime(2025, 12, 25, 15, 0), classrooms: ['Лаб 12']),
];

