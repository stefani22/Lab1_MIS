import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/exam.dart';
import '../data/exams.dart';
import 'exam_detail_screen.dart';

class ExamListScreen extends StatelessWidget {
  const ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 221148'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          final isPast = exam.dateTime.isBefore(DateTime.now());
          final formattedDate =
          DateFormat('dd.MM.yyyy – HH:mm').format(exam.dateTime);

          return Card(
            color: isPast ? Colors.grey[300] : Colors.indigo[50],
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Icon(
                Icons.book,
                color: isPast ? Colors.grey : Colors.indigo,
              ),
              title: Text(
                exam.subject,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isPast ? Colors.black54 : Colors.indigo[900],
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_month, size: 16),
                      const SizedBox(width: 4),
                      Text(formattedDate),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.room, size: 16),
                      const SizedBox(width: 4),
                      Text(exam.rooms.join(', ')),
                    ],
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ExamDetailScreen(exam: exam),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.indigo,
        padding: const EdgeInsets.all(12),
        child: Text(
          'Вкупно испити: ${exams.length}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
