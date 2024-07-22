import 'package:flutter/material.dart';

import 'package:google_signin/controllers/auth_service.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  authenticateWithGoogle(context) async {
    try {
      await authService.signInWithGoogle();
    } catch (e) {
      print('Error occured!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Register',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),

              // NAME INPUT FIELD
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter Name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),

              const SizedBox(height: 12,),

              // EMAIL INPUT FIELD
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),

              const SizedBox(height: 12,),

              // PASSWORD INPUT FIELD
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),

              const SizedBox(height: 12,),

              // REGISTER BUTTON
              InkWell(
                onTap: () {
                  print('Pressed!');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Log In'),
                  ),
                ],
              ),

              const SizedBox(height: 40,),

              GestureDetector(
                onTap: () {
                  // authenticateWithGoogle(context) async {
                  //   try {
                  //     await authService.signInWithGoogle();
                  //   } catch (e) {
                  //     print('Error occured!');
                  //   }
                  // }
                  authenticateWithGoogle(context);
                },
                child: Image.asset('assets/images/google-signin.png', width: 250,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
