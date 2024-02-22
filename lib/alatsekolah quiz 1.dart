import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlatSekolahQuiz1 extends StatefulWidget {
  const AlatSekolahQuiz1({super.key});

  @override
  State<AlatSekolahQuiz1> createState() => _AlatSekolahQuiz1State();
}

class _AlatSekolahQuiz1State extends State<AlatSekolahQuiz1> {
  int userCount = 1;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'image': 'assets/images/Bola Dunia.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Globe', 'Dictionary Book', 'Notebook', 'Scissors'],
      'correctAnswer': 'Globe',
    },
    {
      'image': 'assets/images/Buku Kamus.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Globe', 'Dictionary Book', 'Notebook', 'Scissors'],
      'correctAnswer': 'Dictionary Book',
    },
    {
      'image': 'assets/images/Buku Tulis.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Globe', 'Dictionary Book', 'Notebook', 'Scissors'],
      'correctAnswer': 'Notebook',
    },
    {
      'image': 'assets/images/Gunting.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Globe', 'Dictionary Book', 'Notebook', 'Scissors'],
      'correctAnswer': 'Scissors',
    },
    {
      'image': 'assets/images/Kalender.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Calender', 'Calculator', 'Chalk', 'Crayons'],
      'correctAnswer': 'Calender',
    },
    {
      'image': 'assets/images/Kalkulator.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Calender', 'Calculator', 'Chalk', 'Crayons'],
      'correctAnswer': 'Calculator',
    },
    {
      'image': 'assets/images/Kapur.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Calender', 'Calculator', 'Chalk', 'Crayons'],
      'correctAnswer': 'Chalk',
    },
    {
      'image': 'assets/images/Krayon.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Calender', 'Calculator', 'Chalk', 'Crayons'],
      'correctAnswer': 'Crayons',
    },
    {
      'image': 'assets/images/Kuas Lukis.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Paintbrush', 'Chair', 'Study Desk', 'Whiteboard'],
      'correctAnswer': 'Paintbrush',
    },
    {
      'image': 'assets/images/Kursi.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Paintbrush', 'Chair', 'Study Desk', 'Whiteboard'],
      'correctAnswer': 'Chair',
    },
    {
      'image': 'assets/images/Meja Belajar.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Paintbrush', 'Chair', 'Study Desk', 'Whiteboard'],
      'correctAnswer': 'Study Desk',
    },
    {
      'image': 'assets/images/Papan Tulis.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Paintbrush', 'Chair', 'Study Desk', 'Whiteboard'],
      'correctAnswer': 'Whiteboard',
    },
    {
      'image': 'assets/images/Penggaris.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Ruler', 'Whiteboard Eraser', 'Eraser', 'Pencil Sharpener'],
      'correctAnswer': 'Ruler',
    },
    {
      'image': 'assets/images/Penghapus Papan Tulis.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Ruler', 'Whiteboard Eraser', 'Eraser', 'Pencil Sharpener'],
      'correctAnswer': 'Whiteboard Eraser',
    },
    {
      'image': 'assets/images/Penghapus.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Ruler', 'Whiteboard Eraser', 'Eraser', 'Pencil Sharpener'],
      'correctAnswer': 'Eraser',
    },
    {
      'image': 'assets/images/Penserut.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Ruler', 'Whiteboard Eraser', 'Eraser', 'Pencil Sharpener'],
      'correctAnswer': 'Pencil Sharpener',
    },
    {
      'image': 'assets/images/Pensil Warna.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Colored Pencils', 'Pencils', 'Pen', 'Backpack'],
      'correctAnswer': 'Colored Pencils',
    },
    {
      'image': 'assets/images/Pensil.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Colored Pencils', 'Pencils', 'Pen', 'Backpack'],
      'correctAnswer': 'Pencils',
    },
    {
      'image': 'assets/images/Pulpen.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Colored Pencils', 'Pencils', 'Pen', 'Backpack'],
      'correctAnswer': 'Pen',
    },
    {
      'image': 'assets/images/Ransel.png',
      'question': 'What is the name of school tools ?',
      'choices': ['Colored Pencils', 'Pencils', 'Pen', 'Backpack'],
      'correctAnswer': 'Backpack',
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
                  // Navigating to School ToolsQuiz() is commented out since the import statement for 'School Tools quiz.dart' is missing in the code snippet.
                  // Uncomment the code below and replace 'School ToolsQuiz()' with the appropriate import statement.
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => School ToolsQuiz(),
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
          .collection('School Tools Quiz 1 Database')
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
                      'School Tools Quiz 1',
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
