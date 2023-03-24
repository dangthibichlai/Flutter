import 'package:calculate_exercise/models/mon_hoc_model.dart';
import 'package:flutter/material.dart';


class Information extends StatelessWidget {
  final MonHocModel monHoc;
  const Information({super.key, required this.monHoc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            children: [
              const Text("Điểm Toán: "),
              const SizedBox(
                width: 10.0,
              ),
              Text(monHoc.diemToan.toStringAsFixed(2)),
            ],
          ),
          const SizedBox( height: 20.0,),
          Row(
            children: [
              const Text("Điểm Lý: "),
              const SizedBox(
                width: 10.0,
              ),
              Text(monHoc.diemLy.toStringAsFixed(2)),
            ],
          ),
          const SizedBox( height: 20.0,),

          Row(
            children: [
              const Text("Điểm Hóa: "),
              const SizedBox(
                width: 10.0,
              ),
              Text(monHoc.diemHoa.toStringAsFixed(2)),
            ],
          ),
          const SizedBox( height: 20.0,),

          Row(
            children: [
              const Text("Điểm TB: "),
              const SizedBox(
                width: 10.0,
              ),
              Text(monHoc.diemTB.toStringAsFixed(2)),
            ],
          ),
          const SizedBox( height: 20.0,),

          Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                 child: const Text("Back")
              ),
             
            ],
          ),
        ]),
      ),
    );
  }
}
