import 'package:flutter/material.dart';
import 'package:note/common_utils/custom_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // TextEditingController for handling user input
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LightText(text: "Forgot Password", color: Colors.black, size: 20)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email input field
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 24.0),

            // Reset password button
            ElevatedButton(
              onPressed: () {
                // Add your password reset logic here
                // For simplicity, we'll just print the entered email
                print('Email for password reset: ${_emailController.text}');
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
