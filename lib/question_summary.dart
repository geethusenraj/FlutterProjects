import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            color: getCustomColor(data)),
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text("${(data['question_index'] as int) + 1}",
                            style: GoogleFonts.lato(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data['question'] as String,
                                  style: GoogleFonts.lato(
                                      fontSize: 20,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      fontWeight: FontWeight.bold)),
                              Text(data['correct_answer'] as String,
                                  style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: const Color.fromARGB(
                                          255, 180, 100, 255),
                                      fontWeight: FontWeight.bold)),
                              Text(data['selected_answer'] as String,
                                  style: GoogleFonts.lato(
                                      fontSize: 15,
                                      color: const Color.fromARGB(
                                          255, 36, 255, 255),
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }

  getCustomColor(Map<String, Object> data) {
    if (data['correct_answer'] == data['selected_answer']) {
      return const Color.fromARGB(255, 36, 255, 255);
    } else {
      return const Color.fromARGB(255, 180, 100, 255);
    }
  }
}
