import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class KeluargaQuiz2 extends StatefulWidget {
  const KeluargaQuiz2({super.key});

  @override
  State<KeluargaQuiz2> createState() => _KeluargaQuiz2State();
}

class _KeluargaQuiz2State extends State<KeluargaQuiz2> {
  int userCount = 1;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'image': 'assets/images/Adik Laki Laki.png',
      'letter': 'Younger brother',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Suami.png',
      'letter': 'Younger sister',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Anak Laki Laki.png',
      'letter': 'Son',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Sepupu Perempuan.png',
      'letter': 'Daughter',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Ayah.png',
      'letter': 'Father',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Sepupu Laki Laki.png',
      'letter': 'Aunt',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Cucu Laki Laki.png',
      'letter': 'Grandson',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Saudara Ipar Perempuan.png',
      'letter': 'Granddaughter',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Ibu.png',
      'letter': 'Mother',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Saudara Ipar Laki Laki.png',
      'letter': 'Wife',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Kakak Laki Laki.png',
      'letter': 'Older brother',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Paman.png',
      'letter': 'Older sister',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Kakek.png',
      'letter': 'Grandfather',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Adik Perempuan.png',
      'letter': 'Grandmother',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Paman.png',
      'letter': 'Uncle',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Anak Perempuan.png',
      'letter': 'Brother-in-law',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Saudara Ipar Perempuan.png',
      'letter': 'Sister-in-law',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Bibi.png',
      'letter': 'Male cousin',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Sepupu Perempuan.png',
      'letter': 'Female cousin',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Cucu Perempuan.png',
      'letter': 'Husband',
      'correctAnswer': 'False',
    },
    // Tambahkan pertanyaan-pertanyaan lain di sini.
  ];

  @override
  void initState() {
    super.initState();
    questions.shuffle(); // Mengacak urutan pertanyaan
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
        correctAnswers++; // Menambah jumlah jawaban benar.
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
        wrongAnswers++; // Menambah jumlah jawaban salah.
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
                  // Navigating to AbjadQuiz() is commented out since the import statement for 'abjad quiz.dart' is missing in the code snippet.
                  // Uncomment the code below and replace 'AbjadQuiz()' with the appropriate import statement.
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => AbjadQuiz(),
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
          .collection('Family Quiz 2 Database')
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
                      'Family Quiz 2',
                      style: TextStyle(
                        color: Color(0xFF02343F),
                        fontSize: 32,
                        fontFamily: 'Dinofont',
                      ),
                    ),
                    Image.asset(question['image']),
                    const SizedBox(height: 20),
                    Text(
                      'Is this a ${question['letter']}?',
                      style: const TextStyle(
                        fontSize: 24,
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
