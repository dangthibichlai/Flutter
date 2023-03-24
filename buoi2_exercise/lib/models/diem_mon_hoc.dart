class DiemMonHoc {
  final double diemAnh;
  final double diemVan;

  DiemMonHoc({required this.diemAnh, required this.diemVan});

  double get diemTrungBinh => (diemAnh + diemVan) / 2;
}
