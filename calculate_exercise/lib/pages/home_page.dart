import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../models/mon_hoc_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController toanController = TextEditingController();
    // ignore: unused_local_variable
    TextEditingController lyController = TextEditingController();
    // ignore: unused_local_variable
    TextEditingController hoaController = TextEditingController();
    TextEditingController heSoHoaController = TextEditingController();
    TextEditingController heSoToanController = TextEditingController();
    TextEditingController heSoLyController = TextEditingController();
    String diemTB = ' ';

    return Scaffold(
      appBar: AppBar(
        title: const Text('BÀI TẬP VỀ NHÀ'),
        backgroundColor: const Color.fromARGB(255, 148, 12, 3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                ),
                title: Text("Đặng Thị Bích Lài"),
                subtitle: Text("Lớp: 20CNTT1"),
              ),

              //child: Padding(padding: EdgeInsets.all(10.0)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomtextFile(
                hintText: "Nhập điểm toán",
                lableText: "Điểm Toán",
                controllerDiem: toanController,
                controllerHeSo: heSoToanController),
            const SizedBox(height: 20.0),
            CustomtextFile(
                hintText: "Nhập điểm lý",
                lableText: "Điểm Lý",
                controllerDiem: lyController,
                controllerHeSo: heSoLyController),
            const SizedBox(height: 20.0),
            CustomtextFile(
                hintText: "Nhập điểm hóa",
                lableText: "Điểm Hóa",
                controllerDiem: hoaController,
                controllerHeSo: heSoHoaController),
            const SizedBox(height: 20.0),
            // const SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: CustomButton(
                    onPressed: () {
                      double diemToan =
                          double.parse(toanController.text.trim());
                      double diemLy = double.parse(lyController.text.trim());
                      double diemHoa = double.parse(hoaController.text.trim());
                      double heSoToan =
                          double.parse(heSoToanController.text.trim());
                      double heSoLy =
                          double.parse(heSoLyController.text.trim());
                      double heSoHoa =
                          double.parse(heSoHoaController.text.trim());

                      // ignore: unused_local_variable
                      MonHocModel monHoc = MonHocModel(
                          diemHoa: diemHoa,
                          diemLy: diemLy,
                          diemToan: diemToan,
                          heSodiemHoa: heSoHoa,
                          heSodiemLy: heSoLy,
                          heSodiemToan: heSoToan);
                      diemTB = monHoc.diemTB.toStringAsFixed(2);
                      setState(() {});
                    },
                    text: 'Tính điểm ',
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                        enabled: false,
                        label: Text(diemTB),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 149, 142, 142)))),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
