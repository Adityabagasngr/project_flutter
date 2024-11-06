import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        elevation: 0, 
        backgroundColor: Colors.transparent, 
      ),
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
              'Lupa Password',
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

            
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Permintaan reset password untuk $email telah dikirim')),
                );
              },
              child: Text('Kirim'),
            ),
          ],
        ),
      ),
    );
  }
}
