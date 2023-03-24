import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ABC"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SizedBox(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const TextField(
                decoration: InputDecoration(
                    hintText: "Text Filed",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 146, 142, 142)))),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Text Filed",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 146, 142, 142)))),
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                child: Row(children: [
                  // ignore: prefer_const_constructors
                  Expanded(
                    flex: 2,
                    child: const Text(""),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Button"),
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(""),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
