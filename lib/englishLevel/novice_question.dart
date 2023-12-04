class Question {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  Question({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<Question> questions = [
  //one
  Question(
    question:
        "Tom: Why didn’t you join us at the party last night?\nMook: _____________________.",
    answers: [
      'Sorry, but I was really sick.',
      'Thank you, I’ll be there.',
      'See you next time.',
      'I’m afraid I can’t.'
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    question:
        "A : Are you and John footballers ?\nB : ___________Football is my favorite sport.",
    answers: ['Yes, we are', 'No, we aren’t', 'Yes, we do', 'No, we don’t'],
    correctAnswerIndex: 0,
  ),
];
