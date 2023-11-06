import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/result_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  /// Method-1 with initState()
  // Widget? activeScreenSelected;
  //
  // @override
  // void initState() {
  //   activeScreenSelected = StartScreen(switchScreen);
  //   super.initState();
  // }

  /// Method-2 with string value to identify each screens, we can opt int values as well.
  var activeScreenSelected = 'start-screen';

  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      /// Follows Method-1
      // activeScreenSelected = const QuestionsScreen();

      /// Follows Method-2
      activeScreenSelected = 'questions-screen';
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreenSelected = 'result-screen';
      });
    }
  }

  void goToStartScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreenSelected = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    ///Method-3, declaring a widget object with scope limited to build() using if condition.
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreenSelected == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswers);
    } else if (activeScreenSelected == 'result-screen') {
      computeResultCount();
      screenWidget = ResultScreen(
        userSelectedAnswers: selectedAnswers,goToStartScreen: goToStartScreen,
      );
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.deepPurple, Colors.indigo])),

        /// Follows Method-1
        // child: activeScreenSelected

        /// Follows Method-2, with Ternary operation
        // child: activeScreenSelected == 'start-screen'
        //     ? StartScreen(switchScreen)
        //     : const QuestionsScreen()

        ///Follows Method-3
        child: screenWidget,
      )),
    );
  }
}

void computeResultCount() {}
