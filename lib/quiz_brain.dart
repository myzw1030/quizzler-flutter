import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsBank = [
    Question(
      '2000円札は、既に製造が停止されているでしょうか。マルかバツか、どちらでしょう？',
      true,
    ),
    Question(
      '日本の中で、面積が一番小さい都道府県は、大阪府である。',
      false,
    ),
    Question(
      'パンダのしっぽの色は白色でしょうか？',
      true,
    ),
    Question(
      'アイスの賞味期限はなく、きちんと保管されたものであれば、昔のものでも食べられるか。',
      true,
    ),
    Question(
      '干支は12種類の動物から成り立っている。',
      true,
    ),
    Question(
      'カタツムリがブロック塀などを這っている時、コンクリートを食べている。',
      true,
    ),
    Question(
      '宇宙船に乗ったことがある犬がいる。',
      true,
    ),
    Question(
      'プテラノドンは恐竜である。',
      false,
    ),
    Question(
      '中国語で手紙はティッシュペーパーと呼びます。',
      false,
    ),
    Question(
      '人気ゲーム「ドラゴンクエスト」のナンバリングタイトル全てに登場しているモンスターは、スライムのみである。',
      false,
    ),
    Question(
      '全ての動物の中で、一番妊娠期間が長い動物は、ゾウである。',
      true,
    ),
    Question(
      'タラバガニはカニではない。',
      true,
    ),
    Question(
      '「土竜」と書いて、「もぐら」と読む。',
      true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionsBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionsBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionsBank.length - 1) {
      // print('true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
