import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chương trình bán sách online"),
        centerTitle: true,
        backgroundColor: Colors.green,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10.0),
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: const Text("Thông tin hóa đơn"),
          ),
        ),
        // thêm text vào AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //TextFile Tên khách hàng
            Row(
              children: const [
                Expanded(
                  flex: 2,
                  child: Text("Tên Khách Hàng: "),
                ),
                Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Nhập tên"),
                  ),
                )
              ],
            ),
            //TextFile Tên số lượng sách
            Row(
              children: const [
                Expanded(
                  flex: 2,
                  child: Text("Số lượng sách: "),
                ),
                Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Nhập tên"),
                  ),
                )
              ],
            ),
            // checkbox
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Text(""),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            value = value;
                          });
                        },
                        focusColor: const Color.fromARGB(255, 238, 123, 8),
                        //checkColor: const Color.fromARGB(255, 234, 130, 51),
                      ),
                      const Text("Khách hàng VIP")
                    ],
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Text(""),
                )
              ],
            ),
          ],
        ),
      ),
      //Tạo checkbox
    );
  }
}
