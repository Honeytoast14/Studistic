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
  Question(
    question: "No problem ! We can help you with ................... homework.",
    answers: ['yours', 'your', 'you', 'his'],
    correctAnswerIndex: 1,
  ),
  Question(
    question: "He .................... (watch) the news after dinner everyday.",
    answers: ['watch', 'watches', 'watched', 'is watching'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "A : I didn’t see you at the party last night.\nB : Oh ! sorry. I couldn’t because Danny__________sick.",
    answers: ['be', 'is', 'was', 'had'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "Greg : ____________do you have a burger at lunch time ?\nBill : I usually have 3 times a week.",
    answers: ['How', 'How often', 'How many', 'How long'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "In a bookstore.\nStore Assistant: ___________________________.\nCustomer: Yes, I’m looking for a children book for my 3 years old daughter.\nStore Assistant: Right this way, ma’ am.",
    answers: [
      'Can you help me?',
      'Will you come back?',
      'Could you move away?',
      'Would you like any help?'
    ],
    correctAnswerIndex: 3,
  ),
  Question(
    question:
        "Susan: Excuse me sir, would you please go back to your previous slide?\nTeacher: __________________.Susan: Thank you.",
    answers: ['Of course not.', 'Absolutely no.', 'Certainly.', 'Obviously.'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "John: We’re running late for class. __________, Pete.\nPete: All right! I’m coming",
    answers: ['Come in', 'Come on', 'Go away', 'Go down'],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "Clyde: What’s the weather like in Thailand?\nSuvit: ____________________.",
    answers: [
      'It’s snowy.',
      'It’s hot and humid.',
      'It’s dull.',
      'It’s windy.'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "Agent: How can I help you, sir?\nAdam: Yes, I’d like to book a round-trip ticket to Japan.\nAgent: What’s your name, please?\nAdam: Adam Cornelius\nAgent: How do you spell ___________?\nAdam: C-o-r-n-e-l-i-u-s\nAgent: Thank you. A moment please.",
    answers: [
      'your first name',
      'your last name',
      'your mother’s maiden name',
      'your given name'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    question:
        "Ann: Fon, do you like to join the party tonight?\nFon: _____________. I have tons of work to do.\nAnn: That’s okay. Good luck with your work.",
    answers: ['Sure', 'Absolutely', 'I’m afraid not', 'I’m afraid of'],
    correctAnswerIndex: 2,
  ),
  Question(
    question:
        "Lydia: John, _______Stephanie. She’s from France.\nJohn: Very nice to meet you, Stephanie.",
    answers: ['Here you are', 'It is', 'These are', 'This is'],
    correctAnswerIndex: 3,
  ),
  Question(
    question:
        "Jen: _____________ English?\nFai: Yes, I do. I speak Chinese and Japanese too.",
    answers: [
      'Have you met',
      'Does he like',
      'Do you like',
      'What do you think about'
    ],
    correctAnswerIndex: 2,
  ),
  Question(
    question: "Som: ____________________?\nPaul: My address is 82 Main street.",
    answers: [
      'What’s your phone number',
      'Who is that',
      'How do you spell your name',
      'What’s your address'
    ],
    correctAnswerIndex: 3,
  ),
];
