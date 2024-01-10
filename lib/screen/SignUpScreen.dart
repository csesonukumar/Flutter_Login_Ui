import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:note/common_utils/custom_text.dart';
import 'package:note/common_utils/trial.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // TextEditingController for handling user input
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LightText(text: "SignUp", color: Colors.red, size: 20.0)
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
                    child:
                        Lottie.asset("animations/Animation - 1704464657536.json"),
                  ),
              // Username input field
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 16.0),
          
              // Phone input field
              TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                ),
              ),
              SizedBox(height: 16.0),
          
              // Email input field
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
          
              // Password input field
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 24.0),
          
              // Signup button
              ElevatedButton(
                onPressed: () {
                  // Add your signup logic here
                  // For simplicity, we'll just print the entered values
                  print('Username: ${_usernameController.text}');
                  print('Phone: ${_phoneController.text}');
                  print('Email: ${_emailController.text}');
                  print('Password: ${_passwordController.text}');
                },
                child: Text('Signup'),
              ),
              SizedBox(height: 16.0),
          
              // Already have an account link/button
              TextButton(
                onPressed: () {
                  Get.to(() => LoginPage());
                  // Navigate to the login page or perform other actions
                  // This is a placeholder, you should implement the navigation
                  print('Already have an account?');
                },
                child: Text('Already have an account? Login here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
