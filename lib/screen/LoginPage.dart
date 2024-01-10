import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:note/common_utils/custom_text.dart';
import 'package:note/screen/ForgotPassword.dart';
import 'package:note/screen/SignUpScreen.dart';

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
          backgroundColor: Colors.blue,
          flexibleSpace: Align(
            alignment: Alignment.center,
            child: LightText(text: "Login page", color: Colors.black, size: 20)
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 400,
                  width: 400,
                  child:
                      Lottie.asset("animations/Animation - 1704464657536.json"),
                ),
                Padding(
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
                        obscureText:
                            true, // To hide the entered text (password)
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
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => ForgotPasswordScreen());
                        },
                        child: Text('Forgot Password'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: Text("Don't have account "),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
