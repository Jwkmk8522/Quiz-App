import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.question,
    required this.questionIndex,
    required this.answerquestion,
  });
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int) answerquestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questionText: question[questionIndex]['qs'] as String),
        ...(question[questionIndex]['ans'] as List<Map<String, Object>>)
            .map((e) {
          return Answers(
              answerText: e['text'] as String,
              handler: () => (answerquestion(e['score'] as int)));
        })
      ],
    );
  }
}
