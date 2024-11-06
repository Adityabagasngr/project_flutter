import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController = TextEditingController();

    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset(
              'assets/logo.png', 
              height: 80, 
            ),
            SizedBox(height: 10), 

            
            Text(
              'Daftar',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), 

            
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), 

            
            TextField(
              controller: _passwordController,
              obscureText: true, 
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), 

            
            TextField(
              controller: _confirmPasswordController,
              obscureText: true, 
              decoration: InputDecoration(
                labelText: 'Konfirmasi Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), 

            
            ElevatedButton(
              onPressed: () {
                
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Pendaftaran berhasil!')),
                );
              },
              child: Text('Daftar'),
            ),

            SizedBox(height: 20), 

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah memiliki akun? "),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login'); 
                  },
                  child: Text("Masuk"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
