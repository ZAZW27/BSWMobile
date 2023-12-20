import 'package:bswmobile/pages/home.dart';
import 'package:bswmobile/pages/login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo di atas
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Image.asset(
                'assets/img/bsw-logo.png', // Gantilah dengan path logo Anda
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                children: [
                  const Text(
                    'Buat akun Balikpapan Single Window anda disini',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  // Textfield untuk username
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Nama',
                      isDense: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'NIK',
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan NIK ',
                      isDense: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Email',
                      isDense: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'No Telp.',
                      border: OutlineInputBorder(),
                      hintText: '+62 000-000-000',
                      isDense: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Password',
                      isDense: true,
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Verifikasi Password',
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan password anda sekali lagi',
                      isDense: true,
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // FlatButton untuk "Lupa Password?"
                  const SizedBox(height: 18),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Login()));
                      },
                      child: const Text(
                        'Registrasi',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Sudah Punya Akun?'),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Login()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}