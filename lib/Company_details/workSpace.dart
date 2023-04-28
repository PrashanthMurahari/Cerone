import 'package:flutter/material.dart';

class WorkSpace extends StatefulWidget {
  const WorkSpace({Key? key}) : super(key: key);

  @override
  State<WorkSpace> createState() => _WorkSpaceState();
}

class _WorkSpaceState extends State<WorkSpace> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const [
        Text(
          'WorkSpace',
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    );
  }
}
