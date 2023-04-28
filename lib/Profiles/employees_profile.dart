import 'package:flutter/material.dart';

class EmployeesProfile extends StatefulWidget {
  const EmployeesProfile({Key? key}) : super(key: key);

  @override
  State<EmployeesProfile> createState() => _EmployeesProfileState();
}

class _EmployeesProfileState extends State<EmployeesProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
          Text(
            'Employees Profile',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
