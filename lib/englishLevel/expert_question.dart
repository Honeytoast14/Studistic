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
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.",
    answers: ['chess', 'golf', 'darts', 'yoga'],
    correctAnswerIndex: 3,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.",
    answers: ['decline', 'progress', 'growth', 'increase'],
    correctAnswerIndex: 0,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.",
    answers: ['profit', 'proof', 'product', 'partnership'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.",
    answers: ['browse', 'search', 'reflect', 'download'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.",
    answers: ['glow', 'shadow', 'beam', 'light'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.\nfootball : field",
    answers: [
      'racket : pitch',
      'baseball : bat',
      'tae kwan do : stadium',
      'squash : court'
    ],
    correctAnswerIndex: 3,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.\nrubber : flexible",
    answers: [
      'vinegar : taste',
      'plastic : artificial',
      'glass : brittle',
      'liquid : melting'
    ],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.\nclubbing : entertainment",
    answers: [
      'school : fish',
      'television : mess media',
      'performer : theatre',
      'stipend : income'
    ],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.\nmelancholy : ecstasy",
    answers: [
      'courageous : coward',
      'glee : amusement',
      'union : strike',
      'original : imitation'
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    question:
        "Three of the words in each group relate to each other somehow. Choose the word that does not belong with others.\nmiser : thrift",
    answers: [
      'sage : distress',
      'prayer : malice',
      'boxer : endurance',
      'beggar : blemish'
    ],
    correctAnswerIndex: 3,
  ),
];
