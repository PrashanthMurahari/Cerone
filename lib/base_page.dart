import 'package:flutter/material.dart';

abstract class BasePageState<T> extends State {
  Widget editingButton(String text, Function()? onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 3,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }

  Widget textField(TextEditingController controller) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          cursorColor: Colors.black,
          cursorHeight: 20,
          cursorWidth: 1,
          controller: controller,
          decoration: InputDecoration(
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ],
    );
  }
}
