import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  'Silahkan Login untuk Masuk ke Beranda Balikpapan Single Window',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                // Textfield untuk username
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'NIK / Email',
                    border: OutlineInputBorder(),
                    hintText: 'Masukkan NIK atau Email',
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
                const SizedBox(height: 10),
                // FlatButton untuk "Lupa Password?"
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Belum Punya Akun?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Buat Akun',
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
    );
  }
}