import 'package:flutter/material.dart';

class Text_input_Field extends StatelessWidget {
  const Text_input_Field(
      {Key? key, required this.email, required this.emailcontroler})
      : super(key: key);

  @override
  final String email;
  final String emailcontroler;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1, 1),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
            hintText: email,
            prefixIcon: Icon(Icons.email),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
