import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final String hintText;
  const MyWidget({super.key,
  required this.text,
  required this.hintText, 
  required this.controller}); // Cặp dấu {} 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        TextField(
          
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              hintText: 'Text',
              labelText: 'Text',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              )),
        ),
      ],
    );
  }
}
