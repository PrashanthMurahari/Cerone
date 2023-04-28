import 'package:flutter/material.dart';

class Investment extends StatefulWidget {
  const Investment({Key? key}) : super(key: key);

  @override
  State<Investment> createState() => _InvestmentState();
}

class _InvestmentState extends State<Investment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Investment',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
