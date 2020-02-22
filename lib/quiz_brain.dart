import 'question.dart';

class QuizBrain {
  //퀴즈가 해야하고 할 수 있는 모든 것을 정의

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('한국은 4계절이다.', true),
    Question('1 + 1 은 3이다.', false),
    Question('인간의 피는 초록색이다.', false),
    Question('악어는 파충류이다.', true),
    Question('인어공주의 엔딩은 물거품이 되어 사라지는 것이다.', true),
    Question('메두사의 눈을 쳐다보면 돌로 변한다.', true),
    Question('하루는 12시간이다.', false),
    Question('한강은 겨울이 되면 스케이트장으로 바뀐다.', false),
    Question('강아지와 고양이는 친하다.', false),
    Question('폐암은 담배를 많이 폈을 때 발병될 가능성이 높다.', true),
    Question('Dart 는 구글이 개발한 프로그래밍 언어이다.', true),
    Question('초콜릿은 강아지의 심장과 신경계에 영향을 미친다. 강아지에게 먹이면 죽을 수도 있다.', true),
    Question('도로교통법 : 스쿨존의 제한속도는 30km 이내로 제한된다.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      //_questionNumber가 _questionBank의 길이를 -1한 12가 되는 순간 조건이 false가 되니까 ++하지 않음
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    //메소드
    return _questionBank[_questionNumber].questionText;
    //_questionBank 의 questionNumber(인덱스를 의미)의 질문을 말한다.
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
    //_questionBank 의 questionNumber(인덱스를 의미)의 답변을 말한다.
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //_questionNumber가 _questionBank의 길이를 -1한 12보다 크거나같으면 print문 실행
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
