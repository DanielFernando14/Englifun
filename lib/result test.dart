import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResultTest extends StatefulWidget {
  const ResultTest({super.key});

  @override
  State<ResultTest> createState() => _ResultTestState();
}

class _ResultTestState extends State<ResultTest> {
  int userCount = 1;
  User? currentUser;
  final CollectionReference preTestCollection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('PreTest Database');
  final CollectionReference alphabetQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Alphabet Quiz 1 Database');
  final CollectionReference alphabetQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Alphabet Quiz 2 Database');
  final CollectionReference activityQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Activity Quiz 1 Database');
  final CollectionReference activityQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Activity Quiz 2 Database');
  final CollectionReference kitchensetQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Kitchen Set Quiz 1 Database');
  final CollectionReference kitchensetQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Kitchen Set Quiz 2 Database');
  final CollectionReference musicalinstrumentQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Musical Instrument Quiz 1 Database');
  final CollectionReference musicalinstrumentQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Musical Instrument Quiz 2 Database');
  final CollectionReference homeapplianceQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Home Appliance Quiz 1 Database');
  final CollectionReference homeapplianceQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Home Appliance Quiz 2 Database');
  final CollectionReference schooltoolsQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('School Tools Quiz 1 Database');
  final CollectionReference schooltoolsQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('School Tools Quiz 2 Database');
  final CollectionReference bodypartsQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Body Parts Quiz 1 Database');
  final CollectionReference bodypartsQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Body Parts Quiz 2 Database');
  final CollectionReference numberQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Number Quiz 1 Database');
  final CollectionReference numberQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Number Quiz 2 Database');
  final CollectionReference shapeQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Shape Quiz 1 Database');
  final CollectionReference shapeQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Shape Quiz 2 Database');
  final CollectionReference fruitQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Fruit Quiz 1 Database');
  final CollectionReference fruitQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Fruit Quiz 2 Database');
  final CollectionReference animalQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Animal Quiz 1 Database');
  final CollectionReference animalQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Animal Quiz 2 Database');
  final CollectionReference hobbyQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Hobby Quiz 1 Database');
  final CollectionReference hobbyQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Hobby Quiz 2 Database');
  final CollectionReference familyQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Family Quiz 1 Database');
  final CollectionReference familyQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Family Quiz 2 Database');
  final CollectionReference foodQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Food Quiz 1 Database');
  final CollectionReference foodQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Food Quiz 2 Database');
  final CollectionReference drinkQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Drink Quiz 1 Database');
  final CollectionReference drinkQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Drink Quiz 2 Database');
  final CollectionReference seasonQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Season Quiz 1 Database');
  final CollectionReference seasonQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Season Quiz 2 Database');
  final CollectionReference sportQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Sport Quiz 1 Database');
  final CollectionReference sportQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Sport Quiz 2 Database');
  final CollectionReference clothesQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Clothes Quiz 1 Database');
  final CollectionReference clothesQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Clothes Quiz 2 Database');
  final CollectionReference professionQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Profession Quiz 1 Database');
  final CollectionReference professionQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Profession Quiz 2 Database');
  final CollectionReference roomathomeQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Room at Home Quiz 1 Database');
  final CollectionReference roomathomeQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Room at Home Quiz 2 Database');
  final CollectionReference vegetablesQuiz1Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Vegetables Quiz 1 Database');
  final CollectionReference vegetablesQuiz2Collection = FirebaseFirestore
      .instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Vegetables Quiz 2 Database');
  final CollectionReference placeQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Place Quiz 1 Database');
  final CollectionReference placeQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Place Quiz 2 Database');
  final CollectionReference vehicleQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Vehicle Quiz 1 Database');
  final CollectionReference vehicleQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Vehicle Quiz 2 Database');
  final CollectionReference colorQuiz1Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Color Quiz 1 Database');
  final CollectionReference colorQuiz2Collection = FirebaseFirestore.instance
      .collection('Englifun')
      .doc('Englifun Database')
      .collection('Color Quiz 2 Database');
  // Add your other collection references here
  String grade = '';
  int correctAnswer = 0;
  int wrongAnswer = 0;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    currentUser = FirebaseAuth.instance.currentUser!;
    fetchPreTestData();
  }

  Future<void> fetchPreTestData() async {
    try {
      DocumentSnapshot preTestSnapshot =
          await preTestCollection.doc('user$userCount').get();
      if (preTestSnapshot.exists) {
        setState(() {
          grade = preTestSnapshot.get('Grade');
          correctAnswer = preTestSnapshot.get('Correct Answer');
          wrongAnswer = preTestSnapshot.get('Wrong Answer');
        });
      }
    } catch (e) {
      print('Error fetching pretest data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFFD7C49E),
          child: Stack(
            children: [
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
              const Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          'Result Test',
                          style: TextStyle(
                            color: Color(0xFF343148),
                            fontSize: 32,
                            fontFamily: 'Dinofont',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 125,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        currentPageIndex = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                'PreTest',
                                style: TextStyle(
                                  fontFamily: 'Dinofont',
                                  fontSize: 26,
                                  color: Color.fromARGB(255, 11, 135, 127),
                                ),
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Grade',
                                style: TextStyle(
                                  fontFamily: 'Dinofont',
                                  fontSize: 24,
                                  color: Color(0xFF343148),
                                ),
                              ),
                              subtitle: Text(
                                grade,
                                style: const TextStyle(
                                  fontFamily: 'Dinofont',
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 166, 9, 111),
                                ),
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Correct Answer',
                                style: TextStyle(
                                  fontFamily: 'Dinofont',
                                  fontSize: 24,
                                  color: Color(0xFF343148),
                                ),
                              ),
                              subtitle: Text(
                                correctAnswer.toString(),
                                style: const TextStyle(
                                  fontFamily: 'Dinofont',
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 166, 9, 111),
                                ),
                              ),
                            ),
                            ListTile(
                              title: const Text(
                                'Wrong Answer',
                                style: TextStyle(
                                  fontFamily: 'Dinofont',
                                  fontSize: 24,
                                  color: Color(0xFF343148),
                                ),
                              ),
                              subtitle: Text(
                                wrongAnswer.toString(),
                                style: const TextStyle(
                                  fontFamily: 'Dinofont',
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 166, 9, 111),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: alphabetQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Alphabet Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: alphabetQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Alphabet Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: activityQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Activity Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: activityQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Activity Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: kitchensetQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Kitchen Set Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: kitchensetQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Kitchen Set Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: musicalinstrumentQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Musical Instrument Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: musicalinstrumentQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Musical Instrument Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: homeapplianceQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Home Appliance Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: homeapplianceQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Home Appliance Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: schooltoolsQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'School Tools Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: schooltoolsQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'School Tools Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: bodypartsQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Body Parts Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: bodypartsQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Body Parts Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              numberQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Number Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              numberQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Number Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              shapeQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Shape Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              shapeQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Shape Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              fruitQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Fruit Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              fruitQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Fruit Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              animalQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Animal Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              animalQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Animal Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              hobbyQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Hobby Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              hobbyQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Hobby Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              familyQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Family Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              familyQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Family Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              foodQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Food Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              foodQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Food Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              drinkQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Drink Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              drinkQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Drink Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              seasonQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Season Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              seasonQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Season Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              sportQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Sport Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              sportQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Sport Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: clothesQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Clothes Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: clothesQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Clothes Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: professionQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Profession Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: professionQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Profession Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: roomathomeQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Room at Home Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: roomathomeQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Room at Home Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: vegetablesQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Vegetables Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: vegetablesQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Vegetables Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              placeQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Place Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              placeQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Place Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: vehicleQuiz1Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Vehicle Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future: vehicleQuiz2Collection
                              .doc('user$userCount')
                              .get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Vehicle Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              colorQuiz1Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Color Quiz 1',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      Container(
                        child: FutureBuilder<DocumentSnapshot>(
                          future:
                              colorQuiz2Collection.doc('user$userCount').get(),
                          builder: (BuildContext context,
                              AsyncSnapshot<DocumentSnapshot> snapshot) {
                            if (snapshot.hasData && snapshot.data!.exists) {
                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              return Column(
                                children: [
                                  const ListTile(
                                    title: Text(
                                      'Color Quiz 2',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 26,
                                        color:
                                            Color.fromARGB(255, 11, 135, 127),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Grade'],
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Correct Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Correct Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: const Text(
                                      'Wrong Answer',
                                      style: TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color(0xFF343148),
                                      ),
                                    ),
                                    subtitle: Text(
                                      data['Wrong Answer'].toString(),
                                      style: const TextStyle(
                                        fontFamily: 'Dinofont',
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 166, 9, 111),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Container(); // Mengganti CircularProgressIndicator dengan Container kosong
                            }
                          },
                        ),
                      ),
                      // Add your additional slides here
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(49, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      width: 3,
                      height: 3,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentPageIndex == index
                            ? Colors.black
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
