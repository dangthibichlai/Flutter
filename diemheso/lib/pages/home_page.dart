import 'package:diemheso/models/mon_hoc_model.dart';
import 'package:flutter/material.dart';

import '../components/custom_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController toanController = TextEditingController();
  TextEditingController vanController = TextEditingController();
  TextEditingController anhController = TextEditingController();
  TextEditingController heSoToanController = TextEditingController();
  TextEditingController heSoVanController = TextEditingController();
  TextEditingController heSoAnhController = TextEditingController();
  String diemTB = "Điểm TB ";
  String xepLoai = "";

  get style => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ĐIỂM TRUNG BÌNH"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // text màu xanh

            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Điểm toán: ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 178, 241),
                  ),
                ),
                const Spacer(flex: 2),
                const Spacer(flex: 2),
              ],
            ),

            CustomTextFlield(
              controller: toanController,
              hintText: "Điểm  Toán",
              heSoController: heSoToanController,
            ),
            const SizedBox(height: 20.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Điểm văn: ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 178, 241),
                  ),
                ),
                const Spacer(flex: 2),
                const Spacer(flex: 2),
              ],
            ),
            CustomTextFlield(
              controller: vanController,
              hintText: "Điểm  Văn",
              // lableText: "Điểm Văn",
              heSoController: heSoVanController,
            ),
            const SizedBox(height: 20.0),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Điểm anh: ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 178, 241),
                  ),
                ),
                const Spacer(flex: 2),
                const Spacer(flex: 2),
              ],
            ),
            CustomTextFlield(
              controller: anhController,
              hintText: "Điểm  Anh",
              //     lableText: "Điểm Anh",
              heSoController: heSoAnhController,
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                const Text("Xếp loại: "),
                Text(xepLoai),
                const Spacer(flex: 2),
                const Spacer(flex: 2),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    onPressed: () {
                      double diemToan =
                          double.parse(toanController.text.trim());
                      double diemVan = double.parse(toanController.text.trim());
                      double diemAnh = double.parse(toanController.text.trim());
                      double heSodiemToan =
                          double.parse(heSoToanController.text.trim());
                      double heSodiemVan =
                          double.parse(heSoVanController.text.trim());
                      double heSodiemAnh =
                          double.parse(heSoAnhController.text.trim());

                      MonHoc monHoc = MonHoc(
                          diemToan: diemToan,
                          diemAnh: diemAnh,
                          diemVan: diemVan,
                          heSodiemToan: heSodiemToan,
                          heSodiemAnh: heSodiemAnh,
                          heSodiemVan: heSodiemVan);
                      diemTB = monHoc.diemTB.toStringAsFixed(2);
                      xepLoai = monHoc.xepLoai;
                      setState(() {});
                    },
                    child: const Text("Tính điểm trung bình"),
                  ),
                ),
                const SizedBox(width: 20.0),
                // ignore: prefer_const_constructors
                Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      enabled: false,
                      hintText: diemTB,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 149, 200, 242))),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
