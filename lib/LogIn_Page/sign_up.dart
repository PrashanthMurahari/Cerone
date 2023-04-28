import 'package:cerone/base_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends BasePageState<SignUp> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register New User',
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email'),
                  textField(_email),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Re-set Password'),
                  textField(_password),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Confirm Password'),
                  textField(_password),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              editingButton("Register", () {
                Navigator.pop(context);
              })
            ],
          ),
        ),
      ),
    );
  }
}
