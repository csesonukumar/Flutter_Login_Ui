import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:lottie/lottie.dart';
import 'package:note/common_utils/custom_text.dart';

import 'LoginPage.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String username = '';
  String phone = '';
  String email = '';
  String password = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LightText(text: "SignUp", color: Colors.red, size: 20.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 300,
                width: 400,
                child: Lottie.asset("animations/Animation - 1704464657536.json"),
              ),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () async {
                  // Store trimmed entered values in variables
                  username = _usernameController.text.trim();
                  phone = _phoneController.text.trim();
                  email = _emailController.text.trim();
                  password = _passwordController.text.trim();


                    // Create a new user with email and password
                    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );

                    // Get the user ID and other information
                    // User user = userCredential.user;

                    // Print the user information
                    // print('User ID: ${user.uid}');
                    print('Username: $username');
                    print('Phone: $phone');
                    print('Email: $email');
                    print('Password: $password');

                    // Navigate to the next screen or perform other actions
                    // (You can replace this with your navigation logic)
                    // Get.to(() => NextScreen());

                },
                child: const Text('Signup'),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  Get.to(() => const LoginPage());
                  print('Already have an account?');
                },
                child: const Text('Already have an account? Login here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
