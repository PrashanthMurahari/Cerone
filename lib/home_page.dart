import 'package:cerone/Company_details/company_details.dart';
import 'package:cerone/Company_details/workSpace.dart';
import 'package:cerone/Profiles/employees_profile.dart';
import 'package:flutter/material.dart';

import 'Company_details/investment.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const CompanyDetails(),
    const EmployeesProfile(),
    const WorkSpace(),
    const Investment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Company',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Employees Profile',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'WorkSpace',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_sharp),
              label: 'Investment',
              backgroundColor: Colors.orange),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
