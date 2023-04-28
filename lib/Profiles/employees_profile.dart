import 'package:cerone/Profiles/creating_profile.dart';
import 'package:cerone/base_page.dart';
import 'package:flutter/material.dart';

class EmployeesProfile extends StatefulWidget {
  const EmployeesProfile({Key? key}) : super(key: key);

  @override
  EmployeesProfileState createState() => EmployeesProfileState();
}

class EmployeesProfileState extends BasePageState<EmployeesProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Employees Profile',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('isprout-logo.png'),
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 15,
                          ),
                          Text('Prashanth'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Bio')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: editingButton("Create Profile", () {
              print('Prashanth');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreatingProfile()));
            }),
          ),
        ],
      ),
    );
  }
}
