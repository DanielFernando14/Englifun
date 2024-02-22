import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TempatQuiz1 extends StatefulWidget {
  const TempatQuiz1({super.key});

  @override
  State<TempatQuiz1> createState() => _TempatQuiz1State();
}

class _TempatQuiz1State extends State<TempatQuiz1> {
  int userCount = 1;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'image': 'assets/images/Gereja.png',
      'question': 'What place is this ?',
      'choices': ['Church', 'Zoo', 'Chinese Temple', 'Swimming Pool'],
      'correctAnswer': 'Church',
    },
    {
      'image': 'assets/images/Kebun Binatang.png',
      'question': 'What place is this ?',
      'choices': ['Church', 'Zoo', 'Chinese Temple', 'Swimming Pool'],
      'correctAnswer': 'Zoo',
    },
    {
      'image': 'assets/images/Klenteng.png',
      'question': 'What place is this ?',
      'choices': ['Church', 'Zoo', 'Chinese Temple', 'Swimming Pool'],
      'correctAnswer': 'Chinese Temple',
    },
    {
      'image': 'assets/images/Kolam Renang.png',
      'question': 'What place is this ?',
      'choices': ['Church', 'Zoo', 'Chinese Temple', 'Swimming Pool'],
      'correctAnswer': 'Swimming Pool',
    },
    {
      'image': 'assets/images/Masjid.png',
      'question': 'What place is this ?',
      'choices': ['Mosque', 'Museum', 'Beach', 'Supermarket'],
      'correctAnswer': 'Mosque',
    },
    {
      'image': 'assets/images/Museum.png',
      'question': 'What place is this ?',
      'choices': ['Mosque', 'Museum', 'Beach', 'Supermarket'],
      'correctAnswer': 'Museum',
    },
    {
      'image': 'assets/images/Pantai.png',
      'question': 'What place is this ?',
      'choices': ['Mosque', 'Museum', 'Beach', 'Supermarket'],
      'correctAnswer': 'Beach',
    },
    {
      'image': 'assets/images/Pasar Modern.png',
      'question': 'What place is this ?',
      'choices': ['Mosque', 'Museum', 'Beach', 'Supermarket'],
      'correctAnswer': 'Supermarket',
    },
    {
      'image': 'assets/images/Pasar Tradisional.png',
      'question': 'What place is this ?',
      'choices': ['Traditional Market', 'Mountains', 'Port', 'Library'],
      'correctAnswer': 'Traditional Market',
    },
    {
      'image': 'assets/images/Pegunungan.png',
      'question': 'What place is this ?',
      'choices': ['Traditional Market', 'Mountains', 'Port', 'Library'],
      'correctAnswer': 'Mountains',
    },
    {
      'image': 'assets/images/Pelabuhan.png',
      'question': 'What place is this ?',
      'choices': ['Traditional Market', 'Mountains', 'Port', 'Library'],
      'correctAnswer': 'Port',
    },
    {
      'image': 'assets/images/Perpustakaan.png',
      'question': 'What place is this ?',
      'choices': ['Traditional Market', 'Mountains', 'Port', 'Library'],
      'correctAnswer': 'Library',
    },
    {
      'image': 'assets/images/Pura.png',
      'question': 'What place is this ?',
      'choices': ['Hindu Temple', 'House', 'Hospital', 'School'],
      'correctAnswer': 'Hindu Temple',
    },
    {
      'image': 'assets/images/Rumah.png',
      'question': 'What place is this ?',
      'choices': ['Hindu Temple', 'House', 'Hospital', 'School'],
      'correctAnswer': 'House',
    },
    {
      'image': 'assets/images/Rumah Sakit.png',
      'question': 'What place is this ?',
      'choices': ['Hindu Temple', 'House', 'Hospital', 'School'],
      'correctAnswer': 'Hospital',
    },
    {
      'image': 'assets/images/Sekolah.png',
      'question': 'What place is this ?',
      'choices': ['Hindu Temple', 'House', 'Hospital', 'School'],
      'correctAnswer': 'School',
    },
    {
      'image': 'assets/images/Stadion.png',
      'question': 'What place is this ?',
      'choices': ['Stadium', 'Park', 'Toy Store', 'Buddhist Temple'],
      'correctAnswer': 'Stadium',
    },
    {
      'image': 'assets/images/Taman.png',
      'question': 'What place is this ?',
      'choices': ['Stadium', 'Park', 'Toy Store', 'Buddhist Temple'],
      'correctAnswer': 'Park',
    },
    {
      'image': 'assets/images/Toko Mainan.png',
      'question': 'What place is this ?',
      'choices': ['Stadium', 'Park', 'Toy Store', 'Buddhist Temple'],
      'correctAnswer': 'Toy Store',
    },
    {
      'image': 'assets/images/Vihara.png',
      'question': 'What place is this ?',
      'choices': ['Stadium', 'Park', 'Toy Store', 'Buddhist Temple'],
      'correctAnswer': 'Buddhist Temple',
    },
    // Add more questions here.
  ];

  @override
  void initState() {
    super.initState();
    questions.shuffle(); // Randomize the order of questions
  }

  void checkAnswer(String selectedAnswer) {
    final correctAnswer = questions[questionIndex]['correctAnswer'];
    if (selectedAnswer == correctAnswer) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            titleTextStyle: const TextStyle(
              fontSize: 22,
              fontFamily: 'Wigglye',
              color: Colors.black,
            ),
            contentTextStyle: const TextStyle(
              fontSize: 22,
              fontFamily: 'Wigglye',
              color: Colors.black,
            ),
            title: const Text('Congrats!'),
            content: const Text('Your answer is correct.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  nextQuestion();
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Wigglye',
                    color: Colors.black,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          );
        },
      );
      setState(() {
        correctAnswers++; // Increase the number of Correct Answer.
      });
    } else {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            titleTextStyle: const TextStyle(
              fontSize: 22,
              fontFamily: 'Wigglye',
              color: Colors.white,
            ),
            contentTextStyle: const TextStyle(
              fontSize: 22,
              fontFamily: 'Wigglye',
              color: Colors.white,
            ),
            title: const Text('Sorry!'),
            content: const Text('Your answer is wrong.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  nextQuestion();
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Wigglye',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          );
        },
      );
      setState(() {
        wrongAnswers++; // Increase the number of Wrong Answer.
      });
    }
  }

  void nextQuestion() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
      });
    } else {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          String grade;
          if (correctAnswers >= 0 && correctAnswers <= 4) {
            grade = 'D';
          } else if (correctAnswers >= 5 && correctAnswers <= 9) {
            grade = 'C';
          } else if (correctAnswers >= 10 && correctAnswers <= 14) {
            grade = 'B';
          } else {
            grade = 'A';
          }
          return AlertDialog(
            titleTextStyle: const TextStyle(
              fontSize: 22,
              fontFamily: 'Wigglye',
              color: Colors.white,
            ),
            contentTextStyle: const TextStyle(
              fontSize: 22,
              fontFamily: 'Wigglye',
              color: Colors.white,
            ),
            title: const Text('Results'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Correct Answer: $correctAnswers'),
                Text('Wrong Answer: $wrongAnswers'),
                Text('Grade: $grade'),
              ],
            ),
            backgroundColor: const Color.fromARGB(255, 122, 95, 7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  saveTestResult();
                  Navigator.pop(context);
                  // Navigating to Place Quiz is commented out since the import statement for 'Place Quiz.dart' is missing in the code snippet.
                  // Uncomment the code below and replace 'Place Quiz' with the appropriate import statement.
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => Place Quiz(),
                  //   ),
                  // );
                },
                child: const Text(
                  'Finish',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Wigglye',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> saveTestResult() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      await firestore
          .collection('Englifun')
          .doc('Englifun Database')
          .collection('Place Quiz 1 Database')
          .doc('user$userCount')
          .set({
        'Correct Answer': correctAnswers,
        'Wrong Answer': wrongAnswers,
        'Grade': getGrade(),
      });
      userCount++;
    } catch (e) {
      print('Error saving test result: $e');
    }
  }

  String getGrade() {
    if (correctAnswers >= 0 && correctAnswers <= 4) {
      return 'D';
    } else if (correctAnswers >= 5 && correctAnswers <= 9) {
      return 'C';
    } else if (correctAnswers >= 10 && correctAnswers <= 14) {
      return 'B';
    } else {
      return 'A';
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFF0EDCC),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 38,
                height: 38,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(208, 216, 175, 7),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      'Place Quiz 1',
                      style: TextStyle(
                        color: Color(0xFF02343F),
                        fontSize: 28,
                        fontFamily: 'Dinofont',
                      ),
                    ),
                    Image.asset(question['image']),
                    const SizedBox(height: 20),
                    Text(
                      question['question'],
                      style: const TextStyle(
                        fontSize: 22,
                        fontFamily: 'Dinofont',
                      ),
                    ),
                    const SizedBox(height: 0),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 2.5,
                      children: List.generate(
                        question['choices'].length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 10,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xFFF0EDCC), backgroundColor: const Color(0xFF02343F),
                            ),
                            onPressed: () {
                              checkAnswer(question['choices'][index]);
                            },
                            child: Text(
                              question['choices'][index],
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFFF0EDCC),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    saveTestResult();
    super.dispose();
  }
}
