import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final double diemAnh;
  final double diemVan;
  const Information({
    super.key,
    required this.diemAnh,
    required this.diemVan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Điểm văn: ${diemAnh.toStringAsFixed(2)}'),
            Text('Điểm văn: ${diemAnh.toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
