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
        "Situation: Tom and Adam are talking in the park.\nTom: Do you know David Copper?\nAdam: I recognize the name but I can't picture him. _________\nTom: He is very tall and he's got quite short brown hair. ",
    answers: [
      'What does he look like?',
      'What is he like?',
      'How is he like?',
      'What does he like?'
    ],
    correctAnswerIndex: 0,
  ),
  //two
  Question(
    question:
        "Situation: In the office\nAddy: Would you mind if I switch on the air conditioner?\nTim: _________\nAddy: Thank you",
    answers: [
      "No, go ahead.",
      'Oh! What a shame.',
      "Yes, but I don't like it.",
      'Mind your own business.'
    ],
    correctAnswerIndex: 0,
  ),

  //three
  Question(
    question:
        "Situation: Henry is talking to Dan.\nHenry: When did you last go to a football match?\nDan: __________\nHenry: What did you see?\nDan: I saw Chelsea against Liverpool.",
    answers: [
      "I saw my friends last week.",
      'I went there three weeks ago.',
      "I'm a big fan of a football match.",
      'I have never been to a football match.'
    ],
    correctAnswerIndex: 1,
  ),
  //four
  Question(
    question:
        "Situation: At Peter's house \nPeter: Hi Jeff. Come in. Was it difficult to find my place?\nJeff: __________ You gave me really good directions.",
    answers: [
      "Where was it?",
      'How come?',
      "Not at all.",
      'Yes, it was difficult.'
    ],
    correctAnswerIndex: 2,
  ),
  //five
  Question(
    question:
        "Situation: At home, Adam is talking to Peter.\nAdam: _________\nPeter: I suggest using groundnut oil for cooking steaks. It has a mild flavor and can withstand very high temperatures without burning.",
    answers: [
      "How do you like your steak?",
      'What is the best cooking time for steak?',
      "Could you recommend side dishes for steak?",
      'Can you tell me how to cook the perfect steak?'
    ],
    correctAnswerIndex: 3,
  ),
  //six
  Question(
    question:
        "Situation: In the kitchen\nMom: Betty, you should learn how to make creamy corn salad. It is very easy. Only 5 ingredients are needed.\nBetty: How can I make it, Mom? I want a quick and easy recipe.\nMom: First, mix whole kernel corn, diced tomato, green onions and mayonnaise in a small bowl.\n___________ Finally, cover and refrigerate until ready to serve.\nBetty: Oh! That’s easy. ",
    answers: [
      "Season with the basil at last.",
      'Then add salt and pepper.',
      "Serve with chips or over grilled tuna.",
      'After that, spread on softened cream cheese'
    ],
    correctAnswerIndex: 1,
  ),
  //seven
  Question(
    question:
        "Situation: Tom and John are at a convenience store.\nTom: ________\nJohn: Um, I'd like to buy a bar of soap. ",
    answers: [
      "Where can you buy a bar of soap?",
      "What do you want to order?",
      "What would you like to buy?",
      "Why do you want to buy a bar of soap?"
    ],
    correctAnswerIndex: 2,
  ),
  //eight
  Question(
    question:
        "Situation: A tourist is asking Kate the direction.\nA tourist: Excuse me, I'm sorry to trouble you, but could you tell me ________?\nKate: Yes, no problem. Walking straight ahead, after you pass the library you have to turn left. Take your first right and it's across from the bus station.\nA tourist: Thank you so much!",
    answers: [
      "which bus I can take",
      "how I can take the bus",
      "where the bus station is",
      "how I can get to the train station"
    ],
    correctAnswerIndex: 3,
  ),
];
