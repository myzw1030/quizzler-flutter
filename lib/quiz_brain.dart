import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsBank = [
    Question(
      q: '2000円札は、既に製造が停止されているでしょうか。マルかバツか、どちらでしょう？',
      a: true,
    ),
    Question(
      q: '日本の中で、面積が一番小さい都道府県は、大阪府である。',
      a: false,
    ),
    Question(
      q: 'パンダのしっぽの色は白色でしょうか？',
      a: true,
    ),
    Question(
      q: 'アイスの賞味期限はなく、きちんと保管されたものであれば、昔のものでも食べられるか。',
      a: true,
    ),
    Question(
      q: '干支は12種類の動物から成り立っている。',
      a: true,
    ),
    Question(
      q: 'カタツムリがブロック塀などを這っている時、コンクリートを食べている。',
      a: true,
    ),
    Question(
      q: '宇宙船に乗ったことがある犬がいる。',
      a: true,
    ),
    Question(
      q: 'プテラノドンは恐竜である。',
      a: false,
    ),
    Question(
      q: '中国語で手紙はティッシュペーパーと呼びます。',
      a: false,
    ),
    Question(
      q: '人気ゲーム「ドラゴンクエスト」のナンバリングタイトル全てに登場しているモンスターは、スライムのみである。',
      a: false,
    ),
    Question(
      q: '全ての動物の中で、一番妊娠期間が長い動物は、ゾウである。',
      a: true,
    ),
    Question(
      q: 'タラバガニはカニではない。',
      a: true,
    ),
    Question(
      q: '「土竜」と書いて、「もぐら」と読む。',
      a: true,
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
