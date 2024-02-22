import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransportasiQuiz1 extends StatefulWidget {
  const TransportasiQuiz1({super.key});

  @override
  _TransportasiQuiz1State createState() => _TransportasiQuiz1State();
}

class _TransportasiQuiz1State extends State<TransportasiQuiz1> {
  int userCount = 1;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  int questionIndex = 0;
  List<Map<String, dynamic>> questions = [
    {
      'image': 'assets/images/Balon Udara.png',
      'question': 'What vehicle is this ?',
      'choices': ['Hot Air Balloon', 'Bus', 'Helicopter', 'Jet Ski'],
      'correctAnswer': 'Hot Air Balloon',
    },
    {
      'image': 'assets/images/Bus.png',
      'question': 'What vehicle is this ?',
      'choices': ['Hot Air Balloon', 'Bus', 'Helicopter', 'Jet Ski'],
      'correctAnswer': 'Bus',
    },
    {
      'image': 'assets/images/Helikopter.png',
      'question': 'What vehicle is this ?',
      'choices': ['Hot Air Balloon', 'Bus', 'Helicopter', 'Jet Ski'],
      'correctAnswer': 'Helicopter',
    },
    {
      'image': 'assets/images/Jet Ski.png',
      'question': 'What vehicle is this ?',
      'choices': ['Hot Air Balloon', 'Bus', 'Helicopter', 'Jet Ski'],
      'correctAnswer': 'Jet Ski',
    },
    {
      'image': 'assets/images/Jet Tempur.png',
      'question': 'What vehicle is this ?',
      'choices': ['Fighter Jet', 'Ship', 'Submarine', 'Train'],
      'correctAnswer': 'Fighter Jet',
    },
    {
      'image': 'assets/images/Kapal.png',
      'question': 'What vehicle is this ?',
      'choices': ['Fighter Jet', 'Ship', 'Submarine', 'Train'],
      'correctAnswer': 'Ship',
    },
    {
      'image': 'assets/images/Kapal Selam.png',
      'question': 'What vehicle is this ?',
      'choices': ['Fighter Jet', 'Ship', 'Submarine', 'Train'],
      'correctAnswer': 'Submarine',
    },
    {
      'image': 'assets/images/Kereta.png',
      'question': 'What vehicle is this ?',
      'choices': ['Fighter Jet', 'Ship', 'Submarine', 'Train'],
      'correctAnswer': 'Train',
    },
    {
      'image': 'assets/images/Kereta Kuda.png',
      'question': 'What vehicle is this ?',
      'choices': ['Horse-drawn Carriage', 'Car', 'Race Car', 'Fire Truck'],
      'correctAnswer': 'Horse-drawn Carriage',
    },
    {
      'image': 'assets/images/Mobil.png',
      'question': 'What vehicle is this ?',
      'choices': ['Horse-drawn Carriage', 'Car', 'Race Car', 'Fire Truck'],
      'correctAnswer': 'Car',
    },
    {
      'image': 'assets/images/Mobil Balap.png',
      'question': 'What vehicle is this ?',
      'choices': ['Horse-drawn Carriage', 'Car', 'Race Car', 'Fire Truck'],
      'correctAnswer': 'Race Car',
    },
    {
      'image': 'assets/images/Mobil Damkar.png',
      'question': 'What vehicle is this ?',
      'choices': ['Horse-drawn Carriage', 'Car', 'Race Car', 'Fire Truck'],
      'correctAnswer': 'Fire Truck',
    },
    {
      'image': 'assets/images/Motor.png',
      'question': 'What vehicle is this ?',
      'choices': ['Motorcycle', 'Boat', 'Airplane', 'Roller Skates'],
      'correctAnswer': 'Motorcycle',
    },
    {
      'image': 'assets/images/Perahu.png',
      'question': 'What vehicle is this ?',
      'choices': ['Motorcycle', 'Boat', 'Airplane', 'Roller Skates'],
      'correctAnswer': 'Boat',
    },
    {
      'image': 'assets/images/Pesawat.png',
      'question': 'What vehicle is this ?',
      'choices': ['Motorcycle', 'Boat', 'Airplane', 'Roller Skates'],
      'correctAnswer': 'Airplane',
    },
    {
      'image': 'assets/images/Sepatu Roda.png',
      'question': 'What vehicle is this ?',
      'choices': ['Motorcycle', 'Boat', 'Airplane', 'Roller Skates'],
      'correctAnswer': 'Roller Skates',
    },
    {
      'image': 'assets/images/Sepeda.png',
      'question': 'What vehicle is this ?',
      'choices': ['Bicycle', 'Skateboard', 'Tractor', 'Truck'],
      'correctAnswer': 'Bicycle',
    },
    {
      'image': 'assets/images/Transportasi Skateboard.png',
      'question': 'What vehicle is this ?',
      'choices': ['Bicycle', 'Skateboard', 'Tractor', 'Truck'],
      'correctAnswer': 'Skateboard',
    },
    {
      'image': 'assets/images/Traktor.png',
      'question': 'What vehicle is this ?',
      'choices': ['Bicycle', 'Skateboard', 'Tractor', 'Truck'],
      'correctAnswer': 'Tractor',
    },
    {
      'image': 'assets/images/Truck.png',
      'question': 'What vehicle is this ?',
      'choices': ['Bicycle', 'Skateboard', 'Tractor', 'Truck'],
      'correctAnswer': 'Truck',
    },
    // Tambahkan pertanyaan-pertanyaan di sini.
  ];

  @override
  void initState() {
    super.initState();
    questions.shuffle(); // Acak urutan pertanyaan
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
            title: const Text('Selamat!'),
            content: const Text('Jawaban Anda benar.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  nextQuestion();
                },
                child: const Text(
                  'Selanjutnya',
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
        correctAnswers++; // Tambah jumlah Jawaban Benar.
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
            title: const Text('Maaf!'),
            content: const Text('Jawaban Anda salah.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  nextQuestion();
                },
                child: const Text(
                  'Selanjutnya',
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
        wrongAnswers++; // Tambah jumlah Jawaban Salah.
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
            title: const Text('Hasil'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Jawaban Benar: $correctAnswers'),
                Text('Jawaban Salah: $wrongAnswers'),
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
                  // Navigasi ke VehicleQuiz di-comment karena pernyataan import untuk 'VehicleQuiz.dart' tidak ada dalam potongan kode.
                  // Hapus komentar pada kode di bawah dan ganti 'VehicleQuiz' dengan pernyataan import yang sesuai.
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => VehicleQuiz(),
                  //   ),
                  // );
                },
                child: const Text(
                  'Selesai',
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
          .collection('Vehicle Quiz 1 Database')
          .doc('user$userCount')
          .set({
        'Jawaban Benar': correctAnswers,
        'Jawaban Salah': wrongAnswers,
        'Grade': getGrade(),
      });
      userCount++; // Tambah nomor pengguna setelah berhasil menyimpan hasil tes
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
                      'Vehicle Quiz 1',
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
                              foregroundColor: const Color(0xFFF0EDCC),
                              backgroundColor: const Color(0xFF02343F),
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