import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  prefixIcon: Icon(Icons.person, color: Colors.pinkAccent,),
                ),
              ),
        
              const SizedBox(height: 12,),
        
              // EMAIL INPUT FIELD
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter Email',
                  prefixIcon: Icon(Icons.email, color: Colors.pinkAccent,),
                ),
              ),
        
              const SizedBox(height: 12,),
        
              // PASSWORD INPUT FIELD
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.pinkAccent,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
