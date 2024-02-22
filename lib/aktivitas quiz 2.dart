import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AktivitasQuiz2 extends StatefulWidget {
  const AktivitasQuiz2({super.key});

  @override
  State<AktivitasQuiz2> createState() => _AktivitasQuiz2State();
}

class _AktivitasQuiz2State extends State<AktivitasQuiz2> {
  int userCount = 1;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'image': 'assets/images/BangunTidur.png',
      'letter': 'Wake Up',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Berdoa.png',
      'letter': 'Break',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Berjalan.png',
      'letter': 'Walk',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Berkumpul.png',
      'letter': 'Cook',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Berlari.png',
      'letter': 'Run',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Berteriak.png',
      'letter': 'Go Out',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Duduk.png',
      'letter': 'Sit',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Keluar.png',
      'letter': 'Enter',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Makan.png',
      'letter': 'Eat',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Mandi.png',
      'letter': 'Extinguish',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Melempar.png',
      'letter': 'Throw',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Melepaskan.png',
      'letter': 'Wake Up',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Meletus.png',
      'letter': 'Explode',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Meloncat.png',
      'letter': 'Gather',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Memadamkan.png',
      'letter': 'Extinguish',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Memakai.png',
      'letter': 'Take a Bath',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Memanggang.png',
      'letter': 'Bake',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Memasak.png',
      'letter': 'Bake',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Memasuki.png',
      'letter': 'Enter',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Mematahkan.png',
      'letter': 'Explode',
      'correctAnswer': 'False',
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
                  // Navigating to ActivityQuiz() is commented out since the import statement for 'Activity quiz.dart' is missing in the code snippet.
                  // Uncomment the code below and replace 'ActivityQuiz()' with the appropriate import statement.
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => ActivityQuiz(),
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
          .collection('Activity Quiz 2 Database')
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
                      'Activity Quiz 2',
                      style: TextStyle(
                        color: Color(0xFF02343F),
                        fontSize: 32,
                        fontFamily: 'Dinofont',
                      ),
                    ),
                    Image.asset(question['image']),
                    const SizedBox(height: 20),
                    Text(
                      'Is this a ${question['letter']} activity ?',
                      style: const TextStyle(
                        fontSize: 26,
                        fontFamily: 'Dinofont',
                      ),
                    ),
                    const SizedBox(height: 20),
                    IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xFFF0EDCC), backgroundColor: const Color(0xFF02343F),
                            ),
                            onPressed: () {
                              checkAnswer('True');
                            },
                            child: const Text(
                              'True',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFF0EDCC),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color(0xFFF0EDCC), backgroundColor: const Color(0xFF02343F),
                            ),
                            onPressed: () {
                              checkAnswer('False');
                            },
                            child: const Text(
                              'False',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFF0EDCC),
                              ),
                            ),
                          ),
                        ],
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
