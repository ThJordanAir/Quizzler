import 'question.dart';

int _questionNumber = 0;

class QuizBrain {
  final List<Question> _questionBank = [
    Question('Kann man eine Kuh die Treppe hinunter, aber nicht hinauf führen?', false),
    Question('Etwa ein Viertel der menschlichen Knochen befinden sich in den Füßen?', true),
    Question('Das Blut einer Schnecke ist grün?', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0;
    }
  }

  int getQuestionNumber() {
    return _questionNumber;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
