import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController for handling user input
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Username/Email input field
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username/Email',
              ),
            ),
            SizedBox(height: 16.0),

            // Password input field
            TextField(
              controller: _passwordController,
              obscureText: true, // To hide the entered text (password)
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 24.0),

            // Sign-in button
            ElevatedButton(
              onPressed: () {
                // Add your authentication logic here
                // For simplicity, we'll just print the username and password
                print('Username: ${_usernameController.text}');
                print('Password: ${_passwordController.text}');
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
