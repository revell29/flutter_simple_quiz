import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBanks = [
    Question('Presiden indonesia pertama Ir Soekarno?', true),
    Question('HTML adalah bahasa pemrograman?.', false),
    Question('ReactJS adalah framework?', false),
    Question('NextJS adalah framework?', true),
    Question('Iphone buatan Microsoft?', false),
    Question('16 x 5 = 30', false),
    Question('China menjajah indonesia sekarang?', true),
    Question('Pancasila ada 6', false),
    Question('Durasi berpuasa adalah 2 bulan', false),
    Question('5 x 5 x 90 x 2 ÷ 5 ÷ 2 + 10 = 200', false),
  ];

  int totalQuestion() {
    return _questionBanks.length;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBanks.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBanks[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBanks[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBanks.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
