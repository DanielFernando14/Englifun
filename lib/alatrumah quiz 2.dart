import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlatRumahQuiz2 extends StatefulWidget {
  const AlatRumahQuiz2({super.key});

  @override
  State<AlatRumahQuiz2> createState() => _AlatRumahQuiz2State();
}

class _AlatRumahQuiz2State extends State<AlatRumahQuiz2> {
  int userCount = 1;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'image': 'assets/images/Foto.png',
      'letter': 'Photo',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Tempat Tidur.png',
      'letter': 'Clock',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Kipas Angin.png',
      'letter': 'Fan',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Televisi.png',
      'letter': 'Computer',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Kulkas.png',
      'letter': 'Refrigator',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Sofa.png',
      'letter': 'Chair',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Lemari Pakaian.png',
      'letter': 'Wardrobe',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Setrika.png',
      'letter': 'Table',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Mesin Cuci.png',
      'letter': 'Washing Machine',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Pintu.png',
      'letter': 'Microwave',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Pemanas Air.png',
      'letter': 'Water Heater',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Pengering Rambut.png',
      'letter': 'Vacuum Cleaner',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Pemutar DVD.png',
      'letter': 'DVD Player',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Jam.png',
      'letter': 'Speaker',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Pengering Rambut.png',
      'letter': 'Hair Dryer',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Komputer.png',
      'letter': 'Door',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Setrika.png',
      'letter': 'Iron',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Kursi.png',
      'letter': 'Sofa',
      'correctAnswer': 'False',
    },
    {
      'image': 'assets/images/Televisi.png',
      'letter': 'Television',
      'correctAnswer': 'True',
    },
    {
      'image': 'assets/images/Meja.png',
      'letter': 'Bed',
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
          .collection('Home Appliance Quiz 2 Database')
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
                      'Home Appliance Quiz 2',
                      style: TextStyle(
                        color: Color(0xFF02343F),
                        fontSize: 24,
                        fontFamily: 'Dinofont',
                      ),
                    ),
                    Image.asset(question['image']),
                    const SizedBox(height: 20),
                    Text(
                      'Is this a  ${question['letter']}?',
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
