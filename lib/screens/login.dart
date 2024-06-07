// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
         Padding(
           padding: const EdgeInsets.all(33.0),
           child: Column(
            children: [
              const SizedBox(height: 64),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter Your Email Address",
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.all(8.0),
                ),
              )
            ],
                   ),
         ),
      ),
    );
  }
}
