import 'package:flutter/material.dart';

class Abjad extends StatefulWidget {
  const Abjad({super.key});

  @override
  State<Abjad> createState() => _AbjadState();
}

class _AbjadState extends State<Abjad> {
  List<String> AbjadList = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  List<String> gambarAbjad = [
    'assets/images/A.png',
    'assets/images/B.png',
    'assets/images/C.png',
    'assets/images/D.png',
    'assets/images/E.png',
    'assets/images/F.png',
    'assets/images/G.png',
    'assets/images/H.png',
    'assets/images/I.png',
    'assets/images/J.png',
    'assets/images/K.png',
    'assets/images/L.png',
    'assets/images/M.png',
    'assets/images/N.png',
    'assets/images/O.png',
    'assets/images/P.png',
    'assets/images/Q.png',
    'assets/images/R.png',
    'assets/images/S.png',
    'assets/images/T.png',
    'assets/images/U.png',
    'assets/images/V.png',
    'assets/images/W.png',
    'assets/images/X.png',
    'assets/images/Y.png',
    'assets/images/Z.png',
  ];

  int currentIndex = 0;

  void showAlphabetDialog(BuildContext context, int index) {
    List<String> titles = [
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
      'Alphabet',
    ];
    List<String> alphabetList = [
      'Ey',
      'Bee',
      'See',
      'Dee',
      'Ee',
      'Ef',
      'Jee',
      'Eych',
      'Ai',
      'Jei',
      'Kei',
      'El',
      'Em',
      'En',
      'Ou',
      'Pee',
      'Kyu',
      'Aar',
      'Es',
      'Tee',
      'Yoo',
      'Vee',
      'Dah-blyoo',
      'Eks',
      'Wai',
      'Zed',
    ];
    List<String> phoneticSymbols = [
      '/eɪ/',
      '/biː/',
      '/siː/',
      '/diː/',
      '/iː/',
      '/ɛf/',
      '/dʒiː/',
      '/eɪtʃ/',
      '/aɪ/',
      '/dʒeɪ/',
      '/keɪ/',
      '/ɛl/',
      '/ɛm/',
      '/ɛn/',
      '/oʊ/',
      '/piː/',
      '/kjuː/',
      '/ɑr/',
      '/ɛs/',
      '/tiː/',
      '/juː/',
      '/viː/',
      '/ˈdʌbəljuː/',
      '/ɛks/',
      '/waɪ/',
      '/zɛd/',
    ];

    List<String> meanings = [
      'To awaken from sleep.',
      'To pray or worship to God.',
      'To move on foot.',
      'To assemble or collect people or things.',
      'To move quickly or compete in a race.',
      'To yell or raise one\'s voice loudly.',
      'To be in a seated position.',
      'To exit or leave a place.',
      'To consume food.',
      'To bathe or clean oneself with water.',
      'To toss or hurl something.',
      'To let go or set free from something.',
      'To burst or blow up with force.',
      'To leap or hop from one place to another.',
      'To put out, quench, or completely suppress a fire, flame, or light.',
      'To put on or dress in clothes or accessories.',
      'To cook or prepare food using an oven.',
      'To prepare or make food.',
      'To go into or get inside a place.',
      'To fracture or damage something until it\'s not whole.',
      'To read a book.',
      'To write something down.',
      'To sing a song.',
      'To sweep the floor.',
      'To ride a vehicle.',
      'To draw or create a picture.',
    ];

    List<String> examples = [
      'I wake up at 06:00.',
      'I pray when I want to eat, sleep, and after waking up.',
      'I walk to the park.',
      'I gather with friends.',
      'I run with my brother/sister in the park.',
      'I shout because there\'s a cockroach in front of me.',
      'I sit together with friends.',
      'I go out of the bedroom.',
      'I eat with my family.',
      'I take a bath in the bathroom with my doll.',
      'I throw trash into the trash bin.',
      'I release a balloon into the sky.',
      'This blue balloon explodes.',
      'I jump to get a flower.',
      'I extinguish the fire.',
      'I wear clothes in the bedroom.',
      'I bake meat with friends.',
      'I cook in the kitchen.',
      'I enter the airport.',
      'I break the window glass with a ball.',
      'I read a book in the library.',
      'I write my name on the paper.',
      'I sing a song in the shower.',
      'I sweep the floor using a broom.',
      'I ride a bicycle to school.',
      'I draw a picture of a tree.',
    ];

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: const Color(0xFF07553B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(
                  color: Color(0xfffced46a),
                  width: 5.0,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    titles[index],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xfffced46a),
                      fontFamily: 'Dinofont',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AbjadList[index],
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Dinofont',
                      color: Color(0xfffced46a),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    gambarAbjad[index],
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.width * 0.35,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    alphabetList[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Dinofont',
                      color: Color(0xfffced46a),
                    ),
                  ),
                  Text(
                    phoneticSymbols[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xfffced46a),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Meaning:',
                    style: TextStyle(
                      fontFamily: 'Dinofont',
                      fontSize: 24,
                      color: Color(0xfffced46a),
                    ),
                  ),
                  const SizedBox(height: 0),
                  Text(
                    meanings[index],
                    style: const TextStyle(
                      fontFamily: 'Dinofont',
                      fontSize: 16,
                      color: Color(0xfffced46a),
                    ),
                  ),
                  const SizedBox(height: 0),
                  const Text(
                    'Example:',
                    style: TextStyle(
                      fontFamily: 'Dinofont',
                      fontSize: 24,
                      color: Color(0xfffced46a),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    examples[index],
                    style: const TextStyle(
                      fontFamily: 'Dinofont',
                      fontSize: 16,
                      color: Color(0xfffced46a),
                    ),
                  ),
                ],
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (index > 0) {
                          setState(() {
                            index--;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF07553B),
                        backgroundColor: const Color(0xfffced46a),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.arrow_back),
                          Text(
                            'Previous',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Wigglye',
                              color: Color(0xFF07553B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (index < AbjadList.length - 1) {
                          setState(() {
                            index++;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF07553B),
                        backgroundColor: const Color(0xfffced46a),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Wigglye',
                              color: Color(0xFF07553B),
                            ),
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xfffced46a),
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
                      'Alphabet',
                      style: TextStyle(
                        color: Color(0xFF07553B),
                        fontSize: 32,
                        fontFamily: 'Dinofont',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Membuat 26 kotak yang tersusun atas 5 slide secara horizontal
          Positioned.fill(
            top: 85,
            child: PageView.builder(
              controller: PageController(viewportFraction: 1.3),
              itemCount: (AbjadList.length / 6).ceil(),
              itemBuilder: (context, pageIndex) {
                final startIndex = pageIndex * 6;
                final endIndex = (pageIndex + 1) * 6;
                final visibleAbjad = AbjadList.sublist(
                  startIndex,
                  endIndex > AbjadList.length ? AbjadList.length : endIndex,
                );
                return Container(
                  padding:
                      const EdgeInsets.only(left: 35, right: 35, bottom: 0),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    children: List.generate(visibleAbjad.length, (index) {
                      final itemIndex = startIndex + index;
                      return GestureDetector(
                        onTap: () {
                          showAlphabetDialog(context, itemIndex);
                        },
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                visibleAbjad[index],
                                style: const TextStyle(
                                  color: Color(0xFF07553B),
                                  fontSize: 18,
                                  fontFamily: 'Dinofont',
                                ),
                              ),
                              const SizedBox(height: 0),
                              Image.asset(
                                gambarAbjad[itemIndex],
                                width: MediaQuery.of(context).size.width * 0.35,
                                height:
                                    MediaQuery.of(context).size.width * 0.35,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
