import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.userSelectedAnswers,
      required this.goToStartScreen});

  final List<String> userSelectedAnswers;
  final Function() goToStartScreen;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < userSelectedAnswers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'selected_answer': userSelectedAnswers[i]
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    var summaryData = getSummaryData();
    final int numberOfQuestions = questions.length;
    final int numberOfCorrectAnswers = summaryData
        .where((data) => data['correct_answer'] == data['selected_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answered $numberOfCorrectAnswers out of $numberOfQuestions questions correctly!',
              style: GoogleFonts.lato(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 200, 200, 100),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            QuestionSummary(
              summaryData: summaryData,
            ),
            const SizedBox(height: 30),
            TextButton.icon(
              icon: const Icon(Icons.refresh, color: Colors.lime),
              label: Text('Restart Quiz!',
                  style: GoogleFonts.josefinSans(
                      fontSize: 15, color: Colors.white)),
              onPressed: () {
                goToStartScreen();
              },
            )
          ],
        ),
      ),
    );
  }
}
