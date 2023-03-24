import 'package:flutter/material.dart';

class CustomTextFlield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextFlield(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 3, 251, 11),
                blurRadius: 1,
                spreadRadius: 2,
                blurStyle: BlurStyle.inner),
          ]),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.people_outline),
            prefixIconColor: Colors.green,
            hintText: hintText,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide())),
      ),
    );
  }
}
