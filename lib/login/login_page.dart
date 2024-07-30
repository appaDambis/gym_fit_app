import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/login/reset_pass_page.dart';

import '../home/home_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoggingIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Login'),
      ),
      body: Stack(children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/img/background2.jpg', // Background image path
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  fillColor: Colors.black,
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  labelText: 'Password',
                  fillColor: Colors.black,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              _isLoggingIn
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black87)),
                      onPressed: _login,
                      child: const Text('Login'),
                    ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordPage()));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: const Text(
                  'Don\'t have an account? Register',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Future<void> _login() async {
    setState(() {
      _isLoggingIn = true;
    });

    try {
      final String email = _emailController.text.trim();
      final String password = _passwordController.text;

      await _auth.signInWithEmailAndPassword(email: email, password: password);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } catch (e) {
      print('Login Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to login. Please check your credentials.'),
        ),
      );
    } finally {
      setState(() {
        _isLoggingIn = false;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
