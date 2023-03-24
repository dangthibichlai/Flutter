import 'package:flutter/material.dart';

import 'Information.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController vanController = TextEditingController();
  TextEditingController anhController = TextEditingController();
  String diemTB = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BÀI TẬp VỀ NHÀ"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
                controller: anhController,
                decoration: const InputDecoration(
                    hintText: "Nhập điểm Anh",
                    labelText: "Điểm toán",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 150, 145, 145))))),
            const SizedBox(height: 20.0),
            TextField(
              controller: vanController,
              decoration: const InputDecoration(
                hintText: "Nhập điểm Văn",
                labelText: "Điểm Văn",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 150, 145, 145),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const SizedBox(height: 7.0),
                const Text('Điểm TB: '),
                const SizedBox(height: 7.0),
                Text(diemTB),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    double diemAnh = double.parse(anhController.text.trim());
                    double diemVan = double.parse(vanController.text.trim());
                    diemTB = ((diemAnh + diemVan) / 2).toStringAsFixed(2);
                    setState(() {});
                  },
                  child: const Text("Tính điểm"),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Spacer(flex: 2),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      double diemAnh = double.parse(anhController.text.trim());
                      double diemVan = double.parse(vanController.text.trim());
                      // ignore: non_constant_identifier_names
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Information(
                                  diemAnh: diemAnh,
                                  diemVan: diemVan,
                                )),
                      );
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    child: const Text("Next"),
                  ),
                ),
                const Spacer(flex: 2)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
