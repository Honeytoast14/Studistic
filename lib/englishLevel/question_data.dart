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
  //--------------------------------------------------------------------------------harder------------------------------------------------------------
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
  //--------------------------------------------------------------------------------harder------------------------------------------------------------
  Question(
    question:
        "The most important rule to prevent your T-Shirts from _____ is to avoid heat.",
    answers: ['shrink', 'shrank', 'shrinking', 'shrunk'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "The software was designed to update the data continuously _____ the day.",
    answers: ['every', 'throughout', 'besides', 'regarding'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "Records of all _____ between the landlord and the tenants should be kept on record.",
    answers: ['opposition', 'instruction', 'correspondence', 'substitution'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "When _____ printer drivers, you have the option to delete only the printer driver or remove the entire printer-driver package.",
    answers: ['removes', 'removable', 'removal', 'removing'],
    correctAnswerIndex: 3,
  ),
  Question(
    question:
        "The European Union is made up of 15 nations with _____ cultural, linguistic and economic roots.",
    answers: ['distinct', 'unclear', 'tentative', 'widespread'],
    correctAnswerIndex: 0,
  ),
  Question(
    question:
        "Misuri Co. decided to _____ expand its product options to fulfill customers' needs.",
    answers: ['flexibly', 'alternatively', 'strategically', 'accurately'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "Hopper Tech's new database software has _____ search capabilities to provide more relevant results.",
    answers: ['expansively', 'expanded', 'expands', 'expand'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "This form is used to request _____ to students or Dartmouth visitors for travel and entertainment expense incurred for College business.",
    answers: ['commodities', 'profits', 'offers', 'reimbursement'],
    correctAnswerIndex: 3,
  ),
  Question(
    question:
        "Mr. Schmidt will _____ as Ms. Fabrey's replacement when she retires from her position.",
    answers: ['make up', 'take over', 'step down', 'break through'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "While some countries have made huge investments in the Caribbean lately, others have reduced _____.",
    answers: ['themselves', 'theirs', 'their', 'they'],
    correctAnswerIndex: 1,
  ),
  Question(
    question: "The creamy richness is _____ of the cheese from this region.",
    answers: ['vivid', 'qualified', 'substantial', 'characteristic'],
    correctAnswerIndex: 3,
  ),
  Question(
    question:
        "As_____ a week has passed since the goods were shipped, we should ask the shipper for an update.",
    answers: ['partially', 'immediately', 'nearly', 'thoroughly'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "Several flights out of Southwest Florida International Airport are cancelled because of an _____ storm.",
    answers: ['increasing', 'approaching', 'satisfying', 'pending'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "With this 'Buy 1 Get 1 Free' promotion, customers can buy a pack of 12 black pens and get _____ free of charge.",
    answers: ['another', 'other', 'each other', 'one another'],
    correctAnswerIndex: 0,
  ),
  Question(
    question:
        "Frinzel Group is expected to record a _____ higher profit by the end of this year.",
    answers: ['considerably', 'coincidentally', 'effectively', 'thoroughly'],
    correctAnswerIndex: 0,
  ),
  Question(
    question:
        "The new design was the product of a _____ project between marketing and graphic design departments.",
    answers: ['persuasive', 'collaborative', 'complimentary', 'reliable'],
    correctAnswerIndex: 1,
  ),
];
