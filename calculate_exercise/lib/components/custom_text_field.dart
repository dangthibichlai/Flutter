import 'package:flutter/material.dart';

class CustomtextFile extends StatelessWidget {
  final String hintText;
  final String lableText;
  final TextEditingController controllerDiem;
  final TextEditingController controllerHeSo;
  const CustomtextFile(
      {super.key,
      required this.hintText,
      required this.lableText,
      required this.controllerDiem,
      required this.controllerHeSo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            controller: controllerDiem,
            decoration: InputDecoration(
              hintText: hintText,
              labelText: lableText,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 151, 145, 145))),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controllerHeSo,
            decoration: const InputDecoration(
              hintText: "Hệ số",
              labelText: "Hệ số",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 151, 145, 145))),
            ),
          ),
        )
      ],
    );
  }
}
