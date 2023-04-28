import 'package:flutter/material.dart';

class CompanyDetails extends StatefulWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
          Text(
            'Company Details',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
