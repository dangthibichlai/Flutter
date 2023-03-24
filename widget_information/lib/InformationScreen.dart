import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  TextEditingController nameEdit = TextEditingController();
  TextEditingController yearEdit = TextEditingController();
  String name = "Chưa xác định";
  String year = "Chưa xác định";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("THÔNG TIN NGƯỜI DÙNG"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 77, 242, 82),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
        child: Column(
          children: [
            inputDataWidget(
              lableText: "Họ và tên",
              hintText: "Nhập họ và tên",
              controller: nameEdit,
            ),
            inputDataWidget(
              lableText: "Năm sinh",
              hintText: "Nhập năm sinh",
              controller: yearEdit,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = nameEdit.text;
                    year = (DateTime.now().year - int.parse(yearEdit.text))
                        .toString();
                  });
                },
                child: const Text("Xem thông tin")),
            Container(
              //height: MediaQuery.of(context).size.height,
              //width: MediaQuery.of(context).size.width,
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(name),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(year)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget inputDataWidget(
      {required String lableText,
      required String hintText,
      required controller}) {
    return Container(
      //padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
      margin: const EdgeInsets.only(right: 30, left: 30, bottom: 30),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: lableText,
          hintText: hintText,
        ),
        controller: controller,
      ),
    );
  }
}
