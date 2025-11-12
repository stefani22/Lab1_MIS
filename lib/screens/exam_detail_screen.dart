import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;
  const ExamDetailScreen({super.key, required this.exam});

  String timeUntilExam() {
    final now = DateTime.now();
    final diff = exam.dateTime.difference(now);
    final days = diff.inDays;
    final hours = diff.inHours.remainder(24);
    if (diff.isNegative) {
      return 'Испитот веќе помина';
    }
    return 'Преостануваат уште $days дена, $hours часа до испитот';
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
    DateFormat('dd.MM.yyyy – HH:mm').format(exam.dateTime);

    return Scaffold(
      appBar: AppBar(title: Text(exam.subject)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('📅 Датум и време: $formattedDate',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('🏫 Простории: ${exam.rooms.join(', ')}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text(
              '⏳ ${timeUntilExam()}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
