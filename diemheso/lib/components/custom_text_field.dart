import 'package:flutter/material.dart';

class CustomTextFlield extends StatelessWidget {
  final String hintText;
  // final String lableText;
  final TextEditingController controller;
  final TextEditingController heSoController;

  const CustomTextFlield(
      {super.key,
      required this.hintText,
      // required this.lableText,
      required this.controller,
      required this.heSoController});

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              //   labelText: "Điểm Toán",
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 149, 200, 242))),
            ),
          ),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          flex: 1,
          child: TextField(
            controller: heSoController,
            decoration: const InputDecoration(
              hintText: "Hệ số",
              //       labelText: "Hệ số",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 149, 200, 242))),
            ),
          ),
        ),
      ],
    );
  }
}
