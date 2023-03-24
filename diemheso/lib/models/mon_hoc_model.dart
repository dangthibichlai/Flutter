class MonHoc {
  final double diemToan;
  final double diemAnh;
  final double diemVan;
  final double heSodiemToan;
  final double heSodiemAnh;
  final double heSodiemVan;

  MonHoc({
    required this.diemToan,
    required this.diemAnh,
    required this.diemVan,
    required this.heSodiemToan,
    required this.heSodiemAnh,
    required this.heSodiemVan,
  });

  double get diemTB =>
      (diemToan * heSodiemToan +
          diemVan * heSodiemVan +
          diemAnh * heSodiemAnh) /
      3;

  String get xepLoai {
    if (diemTB >= 8.0) {
      return 'A';
    }
    if (diemTB >= 6.5) {
      return 'B';
    }
    if (diemTB >= 5.0) {
      return 'C';
    }
    return 'D';
  }
}
