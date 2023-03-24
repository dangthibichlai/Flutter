class MonHocModel {
  final double diemToan;
  final double diemLy;
  final double diemHoa;
  final double heSodiemToan;
  final double heSodiemLy;
  final double heSodiemHoa;
  MonHocModel({
    required this.heSodiemHoa,
    required this.heSodiemLy,
    required this.heSodiemToan,
    required this.diemHoa,
    required this.diemLy,
    required this.diemToan,
  });

  double get diemTB {
    return ((diemHoa * (heSodiemToan / 10)) +
            (diemLy * (heSodiemLy / 10)) +
            (diemToan * (heSodiemToan / 10))) /
        3;
  }

  String get xepLoai {
    if (diemTB >= 8.0) {
      return 'A';
    }
    if (diemTB >= 8.0) {
      return 'B';
    }
    if (diemTB >= 8.0) {
      return 'C';
    }
    return 'D';
  }
}
