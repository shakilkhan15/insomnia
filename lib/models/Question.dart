class Question {
  final String title;
  final List<String> answers;
  final String orginalAnswer;

  Question({this.answers, this.orginalAnswer, this.title});
}

List<Question> data = [
  Question(
    title: ' if you have insomnia, you are more likely to :',
    answers: [
      'Have memory problem',
      'Have accidents',
      'Be depressed',
      'All of the above'
    ],
    orginalAnswer: 'All of the above'
  ),
  Question(
    title: 'What is the common cause of insomnia?',
    answers: [
      'Depression',
      'Restless leg syndrome',
      'Headache',
    ],
    orginalAnswer: 'Depression'
  ),
  Question(
    title: ' You are more likely to have insomnia if you: ',
    answers: [
      'Travel long distance work',
      'Have a high stress job',
      'Are unemployed',
      'All of the above'
    ],
    orginalAnswer: 'All of the above'
  ),
  Question(
    title: 'Which one do not cause insomnia?',
    answers: [
      'Exercising everyday',
      'Texting a friend before bed',
      'Reading in bed',
    ],
    orginalAnswer: 'Exercising everyday'
  ),
  Question(
    title: 'Which of this can cause insomnia',
    answers: [
      'A cool bedroom',
      'A late dinner',
      'Going to bed at the same time every night',
      'All of the above',
    ],
    orginalAnswer: 'All of the above'
  ),
];
