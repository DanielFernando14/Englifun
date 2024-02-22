import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:englifun/login.dart';
import 'package:englifun/pretest.dart';
import 'package:englifun/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;
  String? _selectedGender;
  bool isNameValid = true;
  bool isEmailValid = true;
  bool _passwordVisible = false;

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool validateName(String name) {
    final RegExp nameRegExp = RegExp(r'^[a-zA-Z ]+$');
    return nameRegExp.hasMatch(name);
  }

  bool validateEmail(String email) {
    final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$');
    return emailRegExp.hasMatch(email);
  }

  Future<void> saveDataToFirestore() async {
    final String name = _nameController.text.trim();
    final String password = _passwordController.text.trim(); // tambahkan ini
    int age = int.tryParse(_ageController.text) ?? 0;
    String gender = _selectedGender ?? "";
    String email = _emailController.text.trim();

    if (name.isEmpty ||
        age <= 0 ||
        gender.isEmpty ||
        email.isEmpty ||
        password.isEmpty) {
      showInvalidDataDialog();
      return;
    }

    if (!isNameValid) {
      showInvalidNameDialog();
      return;
    }

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        final CollectionReference userCollection = FirebaseFirestore.instance
            .collection('Englifun')
            .doc('Englifun Database')
            .collection('User Database');
        QuerySnapshot userCountSnapshot = await userCollection.get();
        int userNumber = userCountSnapshot.size + 0; // Increment user number

        await userCollection.doc('user_$userNumber').set({
          'name': name,
          'age': age,
          'gender': gender,
          'email': email,
          'password': password,
          'userNumber': userNumber,
          // Add other user details here as needed
        });

        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Yeayy ...',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Kartooni',
              ),
            ),
            content: const Text(
              'Apakah kamu siap untuk mengerjakan test?',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Kartooni',
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 8, 160, 99),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  saveSignUpStatus();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PreTest(),
                    ),
                  );
                },
                child: const Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kartooni',
                  ),
                ),
              ),
            ],
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showEmailAlreadyInUseDialog();
      }
      // Handle other FirebaseAuthException codes as needed
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Failed to Save Data',
            style: TextStyle(
              fontFamily: 'Kartooni',
              color: Colors.white,
            ),
          ),
          content: const Text(
            'An error occurred while saving the data. Please try again.',
            style: TextStyle(
              fontFamily: 'Kartooni',
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 8, 160, 99),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'OK',
                style: TextStyle(
                  fontFamily: 'Kartooni',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  void showInvalidDataDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Data Tidak Valid',
          style: TextStyle(
            fontFamily: 'Kartooni',
            color: Colors.white,
          ),
        ),
        content: const Text(
          'Harap pastikan semua kolom diisi dengan benar',
          style: TextStyle(
            fontFamily: 'Kartooni',
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 160, 99),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'OK',
              style: TextStyle(
                fontFamily: 'Kartooni',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showInvalidNameDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Nama Salah',
          style: TextStyle(
            fontFamily: 'Kartooni',
            color: Colors.white,
          ),
        ),
        content: const Text(
          'Harap masukkan nama mu dengan benar.',
          style: TextStyle(
            fontFamily: 'Kartooni',
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 160, 99),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'OK',
              style: TextStyle(
                fontFamily: 'Kartooni',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showEmailAlreadyInUseDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Email Sudah Digunakan',
          style: TextStyle(
            fontFamily: 'Kartooni',
            color: Colors.white,
          ),
        ),
        content: const Text(
          'Email yang Anda masukkan sudah terdaftar. Silakan gunakan email lain.',
          style: TextStyle(
            fontFamily: 'Kartooni',
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 160, 99),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'OK',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Kartooni',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void saveSignUpStatus() async {
    // Implement your SignUp status saving logic here
    if (kDebugMode) {
      print('Save SignUp status');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Aksi ini dijalankan ketika tombol "Back" ditekan
        // Navigasi kembali ke halaman registrasi
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Registration(),
          ),
        );
        // Jangan izinkan navigasi default kembali
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(
                          'assets/images/Background SignUp.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.15), BlendMode.darken),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height:
                                orientation == Orientation.portrait ? 100 : 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: Text(
                                      'Daftar',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'Therestone',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Buat Akun Kamu',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Dinofont',
                                    fontSize: 15,
                                  ),
                                ),
                                TextFormField(
                                  controller: _nameController,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Dinofont',
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Siapa nama mu ?',
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Dinofont',
                                      fontSize: 21,
                                    ),
                                    errorText:
                                        isNameValid ? null : 'Nama Tidak Valid',
                                  ),
                                  textAlign: TextAlign.left,
                                  onChanged: (value) {
                                    setState(() {
                                      isNameValid = validateName(value);
                                    });
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Mohon untuk diisi';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: _ageController,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Dinofont',
                                  ),
                                  decoration: const InputDecoration(
                                    hintText: 'Berapa umur mu?',
                                    hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Dinofont',
                                      fontSize: 21,
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.left,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Mohon untuk diisi';
                                    }
                                    return null;
                                  },
                                ),
                                DropdownButtonFormField<String>(
                                  dropdownColor:
                                      const Color.fromARGB(255, 8, 160, 99),
                                  decoration: const InputDecoration(
                                    hintText: 'Apa jenis kelamin mu?',
                                    hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Dinofont',
                                      fontSize: 21,
                                    ),
                                  ),
                                  value: _selectedGender,
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Laki - Laki',
                                      child: Text(
                                        'Laki - Laki',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Dinofont',
                                          fontSize: 21,
                                        ),
                                      ),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Perempuan',
                                      child: Text(
                                        'Perempuan',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Dinofont',
                                          fontSize: 21,
                                        ),
                                      ),
                                    ),
                                  ],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Dinofont',
                                    fontSize: 21,
                                  ),
                                  onChanged: (String? value) {
                                    setState(() {
                                      _selectedGender = value;
                                    });
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Mohon untuk diisi';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: _emailController,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Dinofont',
                                    fontSize: 21,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Masukkan alamat email mu',
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Dinofont',
                                      fontSize: 21,
                                    ),
                                    errorText: isEmailValid
                                        ? null
                                        : 'Email Tidak Valid',
                                  ),
                                  textAlign: TextAlign.left,
                                  onChanged: (value) {
                                    setState(() {
                                      isEmailValid = validateEmail(value);
                                    });
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Mohon untuk diisi';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Dinofont',
                                    fontSize: 21,
                                  ),
                                  decoration: InputDecoration(
                                    hintText:
                                        'Buatlah password mu (Minimal 6 kata)',
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Dinofont',
                                      fontSize: 20,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                      icon: Icon(_passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  obscureText: !_passwordVisible,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Mohon untuk diisi';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),
                                if (_errorMessage != null)
                                  Text(
                                    _errorMessage!,
                                    style: const TextStyle(color: Colors.red),
                                  ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (isNameValid &&
                                        isEmailValid &&
                                        _emailController.text.isNotEmpty &&
                                        _passwordController.text.isNotEmpty) {
                                      // Perform user registration and data save to Firestore
                                      saveDataToFirestore();
                                    } else {
                                      if (!isNameValid) {
                                        showInvalidNameDialog();
                                      } else if (!isEmailValid) {
                                        showEmailAlreadyInUseDialog();
                                      } else {
                                        showInvalidDataDialog();
                                      }
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        const Color.fromARGB(255, 8, 160, 99),
                                    minimumSize: const Size.fromHeight(20.0),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                  ),
                                  child: const Text(
                                    'DAFTAR',
                                    style: TextStyle(
                                      fontFamily: 'BlobbyChug-Bold',
                                      fontStyle: FontStyle.italic,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Sudah memiliki akun ?',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Dinofont',
                                        fontSize: 21,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Login(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        ' Masuk',
                                        style: TextStyle(
                                          color: Colors.yellow,
                                          fontFamily: 'BlobbyChug-Bold',
                                          fontSize: 21,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
