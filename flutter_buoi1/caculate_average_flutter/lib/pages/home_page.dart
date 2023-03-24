import 'package:flutter/material.dart';
class HomePage extends StatefulWidget { const HomePage({ super.key });
@override State < HomePage > createState() => _HomePageState();// gắn StatefulWidget với cái State 
} 
class _HomePageState extends State < HomePage > { @override Widget build(BuildContext context) { return Scaffold(
    appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Calculate Average Score')),
    ),
    body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
            children :const [
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
        ),
    ),
);
} }