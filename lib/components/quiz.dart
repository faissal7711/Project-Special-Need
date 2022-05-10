class Quiz {
  final int id, answer;
  final String quiz, ask;
  final List<String> optional;

  Quiz({this.id, this.quiz, this.ask, this.optional, this.answer});
}

const List quiz_exam = [
  {
    'id': 1,
    'quiz': 'assets/images/fullshoes.png',
    'ask': 'النشاط الاول ( المطابقة الطلاب داخل الفصل',
    'optional': [
      'assets/images/1.png',
      'assets/images/2.png',
      'assets/images/3.png',
      'assets/images/4.png',
    ],
    'answer': 2,
  },
  {
    'id': 2,
    'quiz': 'assets/images/fulltshirt.png',
    'ask': ' الطلاب ينظفون الفصل',
    'optional': [
      'assets/images/5.png',
      'assets/images/6.png',
      'assets/images/02.png',
      'assets/images/002.png',
    ],
    'answer': 1,
  },
  {
    'id': 3,
    'quiz': 'assets/images/fullball.png',
    'ask': ' الطالب يركب الباص',
    'optional': [
      'assets/images/7.png',
      'assets/images/8.png',
      'assets/images/9.png',
      'assets/images/10.png',
    ],
    'answer': 2,
  },
  {
    'id': 4,
    'quiz': 'assets/images/fullhp.png',
    'ask': ' التلاميذ يتعاونون في تنظيف الفصل ',
    'optional': [
      'assets/images/11.png',
      'assets/images/13.png',
      'assets/images/12.png',
      'assets/images/14.png',
    ],
    'answer': 1,
  },
  {
    'id': 5,
    'quiz': 'assets/images/fullmedia.png',
    'ask': '..... يستيقظ التلميذ مبكر ',
    'optional': [
      'assets/images/17.png',
      'assets/images/15.png',
      'assets/images/16.png',
      'assets/images/18.png',
    ],
    'answer': 0,
  },
  {
    'id': 6,
    'quiz': 'assets/images/fullmedia.png',
    'ask': '..... يستيقظ التلميذ مبكر ',
    'optional': [
      'assets/images/17.png',
      'assets/images/15.png',
      'assets/images/16.png',
      'assets/images/18.png',
    ],
    'answer': 0,
  },
];
