import 'package:cerone/base_page.dart';
import 'package:flutter/material.dart';

class CreatingProfile extends StatefulWidget {
  const CreatingProfile({Key? key}) : super(key: key);

  @override
  CreatingProfileState createState() => CreatingProfileState();
}

class CreatingProfileState extends BasePageState<CreatingProfile> {
  final TextEditingController _nameController  =TextEditingController();
  final TextEditingController _numberController  =TextEditingController();
  final TextEditingController _bioController  =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating profile'),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.black,
              cursorHeight: 20,
              cursorWidth: 1,
              controller: _nameController,
              decoration: InputDecoration(
                label:const Text("Name"),
                enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ), TextFormField(
              cursorColor: Colors.black,
              cursorHeight: 20,
              cursorWidth: 1,
              controller: _numberController,
              decoration: InputDecoration(
                label:const Text("Enter The Number"),
                enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ), TextFormField(
              cursorColor: Colors.black,
              cursorHeight: 20,
              cursorWidth: 1,
              controller: _bioController,
              decoration: InputDecoration(
                label:const Text("Bio"),
                enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
