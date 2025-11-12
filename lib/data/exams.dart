import '../models/exam.dart';

final List<Exam> exams = [
  Exam(
    subject: 'Мобилни информациски системи',
    dateTime: DateTime(2025, 12, 20, 10, 0),
    rooms: ['A1', 'A2'],
  ),
  Exam(
    subject: 'Објектно ориентирано програмирање',
    dateTime: DateTime(2025, 1, 18, 9, 0),
    rooms: ['Lab 2'],
  ),
  Exam(
    subject: 'Бази на податоци',
    dateTime: DateTime(2025, 11, 22, 12, 0),
    rooms: ['B1', 'B2'],
  ),
  Exam(
    subject: 'Интернет технологии',
    dateTime: DateTime(2025, 12, 25, 11, 0),
    rooms: ['B3'],
  ),
  Exam(
    subject: 'Алгоритми и структури на податоци',
    dateTime: DateTime(2025, 1, 15, 8, 30),
    rooms: ['A3'],
  ),
  Exam(
    subject: 'Оперативни системи',
    dateTime: DateTime(2025, 1, 10, 10, 30),
    rooms: ['C1'],
  ),
  Exam(
    subject: 'Математика 2',
    dateTime: DateTime(2025, 12, 5, 9, 0),
    rooms: ['Амфитеатар'],
  ),
  Exam(
    subject: 'Софтверско инженерство',
    dateTime: DateTime(2025, 6, 27, 10, 0),
    rooms: ['A5'],
  ),
  Exam(
    subject: 'Компјутерски мрежи',
    dateTime: DateTime(2025, 9, 17, 13, 0),
    rooms: ['Lab 1'],
  ),
  Exam(
    subject: 'Вештачка интелигенција',
    dateTime: DateTime(2025, 12, 30, 9, 0),
    rooms: ['C2'],
  ),
]..sort((a, b) => a.dateTime.compareTo(b.dateTime));
