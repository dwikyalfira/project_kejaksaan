import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_kejaksaan/widget/text.form.password.dart';

import '../utils/ip.dart';
import '../widget/text.form.global.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController noKtpController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Added form key

  // Future<RegisterResponse?> registerUser() async {
  //   final String fullname = fullnameController.text;
  //   final String username = usernameController.text;
  //   final String email = emailrController.text;
  //   final String password = passwordrController.text;
  //
  //   final url = Uri.parse('$ip/register.php');
  //
  //   try {
  //     final response = await http.post(
  //       url,
  //       body: {
  //         'username': username,
  //         'password': password,
  //         'email': email,
  //         'fullname': fullname,
  //       },
  //     );
  //
  //     RegisterResponse data = registerResponseFromJson(response.body);
  //
  //     if (data.value == 1) {
  //       setState(() {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => LoginScreen()),
  //         );
  //       });
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text(data.message)),
  //       );
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Terjadi kesalahan: $e')),
  //     );
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 110),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Buat Akun Baru',
                      style: TextStyle(
                        color: Color.fromARGB(255, 64, 165, 120),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Buat akun baru untuk dapat menggunakan aplikasi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: usernameController,
                    text: 'Nama Pengguna',
                    obscure: false,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: emailController,
                    text: 'Email',
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: noTelpController,
                    text: 'No Telp',
                    obscure: false,
                    textInputType: TextInputType.phone,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: noKtpController,
                    text: 'No KTP',
                    obscure: false,
                    textInputType: TextInputType.number,
                  ),
                  const SizedBox(height: 15),
                  TextFormPassword(
                    controller: passwordController,
                    text: 'Kata sandi',
                    textInputType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 15),
                  TextFormGlobal(
                    controller: alamatController,
                    text: 'Alamat',
                    obscure: false,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // registerUser();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 157, vertical: 10),
                        backgroundColor: Color.fromARGB(255, 64, 165, 120),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 110),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        'Sudah punya punya akun? silakan masuk disini ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
