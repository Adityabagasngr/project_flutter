import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  
  void _handleLogin() {
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Login berhasil!'))
    );
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        
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
              'Masuk',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), 

            
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
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

            
            ElevatedButton(
              onPressed: _handleLogin,
              child: Text('Login'),
            ),

            SizedBox(height: 20), 

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum mempunyai akun?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register'); 
                  },
                  child: Text("Daftar"),
                ),
              ],
            ),

            
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forgot_password'); 
              },
              child: Text("Lupa password?"),
            ),
          ],
        ),
      ),
    );
  }
}
