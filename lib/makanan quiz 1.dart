import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MakananQuiz1 extends StatefulWidget {
  const MakananQuiz1({super.key});

  @override
  State<MakananQuiz1> createState() => _MakananQuiz1State();
}

class _MakananQuiz1State extends State<MakananQuiz1> {
  int userCount = 1;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'image': 'assets/images/Ayam Goreng.png',
      'question': 'What food is this ?',
      'choices': ['Fried Chicken', 'Meatballs', 'Sliced Fruits', 'Steak'],
      'correctAnswer': 'Fried Chicken',
    },
    {
      'image': 'assets/images/Bakso.png',
      'question': 'What food is this ?',
      'choices': ['Fried Chicken', 'Meatballs', 'Sliced Fruits', 'Steak'],
      'correctAnswer': 'Meatballs',
    },
    {
      'image': 'assets/images/Buah Buahan Potong.png',
      'question': 'What food is this ?',
      'choices': ['Fried Chicken', 'Meatballs', 'Sliced Fruits', 'Steak'],
      'correctAnswer': 'Sliced Fruits',
    },
    {
      'image': 'assets/images/Daging Panggang.png',
      'question': 'What food is this ?',
      'choices': ['Fried Chicken', 'Meatballs', 'Sliced Fruits', 'Steak'],
      'correctAnswer': 'Steak',
    },
    {
      'image': 'assets/images/Ikan Stik.png',
      'question': 'What food is this ?',
      'choices': ['Fish Sticks', 'Cheese', 'French Fries', 'Mashed Potatoes'],
      'correctAnswer': 'Fish Sticks',
    },
    {
      'image': 'assets/images/Keju.png',
      'question': 'What food is this ?',
      'choices': ['Fish Sticks', 'Cheese', 'French Fries', 'Mashed Potatoes'],
      'correctAnswer': 'Cheese',
    },
    {
      'image': 'assets/images/Kentang Goreng.png',
      'question': 'What food is this ?',
      'choices': ['Fish Sticks', 'Cheese', 'French Fries', 'Mashed Potatoes'],
      'correctAnswer': 'French Fries',
    },
    {
      'image': 'assets/images/Kentang Tumbuk.png',
      'question': 'What food is this ?',
      'choices': ['Fish Sticks', 'Cheese', 'French Fries', 'Mashed Potatoes'],
      'correctAnswer': 'Mashed Potatoes',
    },
    {
      'image': 'assets/images/Keripik Kentang.png',
      'question': 'What food is this ?',
      'choices': [
        'Potato Chips',
        'Macaroni and Cheese',
        'Instant Noodles',
        'Fried Rice'
      ],
      'correctAnswer': 'Potato Chips',
    },
    {
      'image': 'assets/images/Makaroni Keju.png',
      'question': 'What food is this ?',
      'choices': [
        'Potato Chips',
        'Macaroni and Cheese',
        'Instant Noodles',
        'Fried Rice'
      ],
      'correctAnswer': 'Macaroni and Cheese',
    },
    {
      'image': 'assets/images/Mie Instant.png',
      'question': 'What food is this ?',
      'choices': [
        'Potato Chips',
        'Macaroni and Cheese',
        'Instant Noodles',
        'Fried Rice'
      ],
      'correctAnswer': 'Instant Noodles',
    },
    {
      'image': 'assets/images/Nasi Goreng.png',
      'question': 'What food is this ?',
      'choices': [
        'Potato Chips',
        'Macaroni and Cheese',
        'Instant Noodles',
        'Fried Rice'
      ],
      'correctAnswer': 'Fried Rice',
    },
    {
      'image': 'assets/images/Nuggets.png',
      'question': 'What food is this ?',
      'choices': ['Nuggets', 'Pancakes', 'Pizza', 'Toast'],
      'correctAnswer': 'Nuggets',
    },
    {
      'image': 'assets/images/Pancake.png',
      'question': 'What food is this ?',
      'choices': ['Nuggets', 'Pancakes', 'Pizza', 'Toast'],
      'correctAnswer': 'Pancakes',
    },
    {
      'image': 'assets/images/Pizza.png',
      'question': 'What food is this ?',
      'choices': ['Nuggets', 'Pancakes', 'Pizza', 'Toast'],
      'correctAnswer': 'Pizza',
    },
    {
      'image': 'assets/images/Roti Bakar.png',
      'question': 'What food is this ?',
      'choices': ['Nuggets', 'Pancakes', 'Pizza', 'Toast'],
      'correctAnswer': 'Toast',
    },
    {
      'image': 'assets/images/Sandwich.png',
      'question': 'What food is this ?',
      'choices': ['Sandwich', 'Cereal', 'Spaghetti', 'Scrambled Eggs'],
      'correctAnswer': 'Sandwich',
    },
    {
      'image': 'assets/images/Sereal.png',
      'question': 'What food is this ?',
      'choices': ['Sandwich', 'Cereal', 'Spaghetti', 'Scrambled Eggs'],
      'correctAnswer': 'Cereal',
    },
    {
      'image': 'assets/images/Spagethi.png',
      'question': 'What food is this ?',
      'choices': ['Sandwich', 'Cereal', 'Spaghetti', 'Scrambled Eggs'],
      'correctAnswer': 'Spaghetti',
    },
    {
      'image': 'assets/images/Telur Dadar.png',
      'question': 'What food is this ?',
      'choices': ['Sandwich', 'Cereal', 'Spaghetti', 'Scrambled Eggs'],
      'correctAnswer': 'Scrambled Eggs',
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
        builder: (context) {
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
        builder: (context) {
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
        builder: (context) {
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
                  // Navigating to Food Quiz() is commented out since the import statement for 'Food Quiz.dart' is missing in the code snippet.
                  // Uncomment the code below and replace 'Food Quiz()' with the appropriate import statement.
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => Food Quiz(),
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
          .collection('Food Quiz 1 Database')
          .doc('user$userCount')
          .set({
        'Correct Answer': correctAnswers,
        'Wrong Answer': wrongAnswers,
        'Grade': getGrade(),
      });
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
                      'Food Quiz 1',
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
