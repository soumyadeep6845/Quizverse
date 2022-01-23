import 'package:flutter/material.dart';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    'id': 1,
    'question': 'Flutter has been developed by?',
    'options': ['Google', 'Microsoft', 'Vanguard', 'Philips'],
    'answer_index': 1,
  },
  {
    'id': 2,
    'question': 'Which is the first search engine on the internet?',
    'options': ['Bing', 'Google', 'Archie', 'Altavista'],
    'answer_index': 3,
  },
  {
    'id': 3,
    'question': 'First computer virus to be discovered?',
    'options': ['Rabbit', 'Creeper', 'SCA', 'Elk Cloner'],
    'answer_index': 2,
  },
  {
    'id': 4,
    'question': 'A dual-layer Blue-ray Disc can store upto _____ GB.',
    'options': ['20', '45', '50', '78'],
    'answer_index': 3,
  },
  {
    'id': 5,
    'question': 'How many layers are present in the OSI Model?',
    'options': ['2', '5', '7', '13'],
    'answer_index': 3,
  },
  {
    'id': 6,
    'question': '.gif is an extension of?',
    'options': ['Word file', 'Audio file', 'Image file', 'Video file'],
    'answer_index': 3,
  },
  {
    'id': 7,
    'question': 'Number of bit used by the IPv6 address?',
    'options': ['32 bit', '64 bit', '128 bit', '256 bit'],
    'answer_index': 3,
  },
  {
    'id': 8,
    'question': 'Which protocol is used to received e-mail?',
    'options': ['POP3', 'SMTP', 'FTP', 'HTTP'],
    'answer_index': 1,
  },
  {
    'id': 9,
    'question': 'Who is also know as the father of Indian Supercomputing?',
    'options': ['Nandan Nilekani', 'Ragunath Mashelkar', 'Jayant Narlikar', 'Vijay Bhatkar'],
    'answer_index': 4,
  },
  {
    'id': 10,
    'question': '\'Longhorn\' was the code name of ?',
    'options': ['Pearl', 'Windows Vista', 'Debian', 'Firebase'],
    'answer_index': 2,
  },
];
